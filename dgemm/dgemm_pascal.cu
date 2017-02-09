#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include <cublas_v2.h>
#include <cassert>
#include "cuda_ptr.cuh"

static inline void __cublasSafeCall(cublasStatus_t err,
                                    const char *file,
                                    const int line) {
  if (CUBLAS_STATUS_SUCCESS != err) {
    fprintf(stderr, "CUBLAS error in file '%s', line %d\n \nerror %d \nterminating!\n", file, line, err);
    cudaDeviceReset();
    assert(0);
  }
}

#ifndef cublasSafeCall
#define cublasSafeCall(err)     __cublasSafeCall(err, __FILE__, __LINE__)
#endif

constexpr int mat_size = 1024;
constexpr int mat_block_size = 128;
static_assert(mat_size % mat_block_size == 0, "error");

__device__ __forceinline__ int lane_id() {
  return threadIdx.x % warpSize;
}

template <typename T>
__device__ __forceinline__ T warp_segment_reduce(T var) {
  for (int offset = (warpSize >> 1); offset > 0; offset >>= 1) {
    var += __shfl_down(var, offset);
  }
  return var;
}

// ASSUME: mat_block_size == blockDim.x
__global__ void dgemm(const double* __restrict__ x,
                      const double* __restrict__ y,
                      double* __restrict__ z,
                      const int N = mat_size) {
  const auto tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid < mat_size * mat_size) {
    const auto i = tid / N;
    const auto j = tid % N;
    double sum = 0.0;
    for (int k = 0; k < mat_size; k++) {
      sum += x[N * i + k] * y[N * k + j];
    }
    z[tid] = sum;
  }
}

void dgemm_cublas(const cuda_ptr<double>& x,
                  const cuda_ptr<double>& y,
                  cuda_ptr<double>& z,
                  const cublasHandle_t& handle) {
  const double alpha = 1.0, beta = 1.0;
  cublasSafeCall(cublasDgemm(handle,
                             CUBLAS_OP_T, CUBLAS_OP_T,
                             mat_size, mat_size, mat_size,
                             &alpha,
                             x, mat_size,
                             y, mat_size,
                             &beta,
                             z, mat_size));
}

void reference(const double* __restrict x,
               const double* __restrict y,
               double* __restrict z,
               const int N = mat_size) {
#if 0
#pragma omp parallel for
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      for (int k = 0; k < N; k++) {
        z[N * i + j] += x[N * i + k] * y[N * k + j];
      }
    }
  }
#else
  const int nib = 4;
  const int njb = 4;
  const int nkb = 4;

#pragma omp parallel for
  for (int ib = 0; ib < N; ib += nib)
    for (int jb = 0; jb < N; jb += njb)
      for (int kb = 0; kb < N; kb += nkb)
        for (int i = ib; i < ib + nib; i++)
          for (int j = jb; j < jb + njb; j++)
            for (int k = kb; k < kb + nkb; k++)
              z[N * i + j] += x[N * i + k] * y[N * k + j];
#endif
}

void check_cublas(const double* z_ref,
                  const double* z,
                  const double eps = 1.0e-8) {
  for (int i = 0; i < mat_size; i++) {
    for (int j = 0; j < mat_size; j++) {
      if (std::abs(z_ref[mat_size * j + i] - z[mat_size * i + j]) >= eps) {
        std::cout << "mismatch\n";
        std::cout << i << " " << j << " "
                  << z_ref[mat_size * j + i] << " "
                  << z[mat_size * i + j] << std::endl;
        std::exit(1);
      }
    }
  }
}

void check(const double* z_ref,
           const double* z,
           const double eps = 1.0e-8) {
  for (int i = 0; i < mat_size * mat_size; i++) {
    if (std::abs(z_ref[i] - z[i] >= eps)) {
      std::cout << "mismatch\n";
      std::cout << i << " " << z_ref[i] << " " << z[i] << std::endl;
      std::exit(1);
    }
  }
}

void show_version(const cublasHandle_t& handle) {
  int cublas_version = 0;
  cublasSafeCall(cublasGetVersion(handle, &cublas_version));
  std::cout << "cublas version " << cublas_version << "\n";
}

#define BENCH(repr)                                                     \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const auto beg = system_clock::now();                               \
    repr;                                                               \
    const auto end = system_clock::now();                               \
    const double elapsed =                                              \
      1.0e-3 * duration_cast<milliseconds>(end - beg).count();          \
    const double flops =                                                \
      2.0 * 1.0e-9 * mat_size * mat_size * mat_size / elapsed;          \
    std::cerr << "array " << mat_size << " " << flops << " [GFLOPS] ";  \
    std::cerr << elapsed << " [ms]\n";                                  \
  } while (0)

#define BENCH_CUDA(repr, gr_size, tb_size, ...)                         \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const auto beg = system_clock::now();                               \
    repr<<<gr_size, tb_size>>>(__VA_ARGS__) ;                           \
    checkCudaErrors(cudaDeviceSynchronize());                           \
    const auto end = system_clock::now();                               \
    const double elapsed =                                              \
      1.0e-3 * duration_cast<milliseconds>(end - beg).count();          \
    const double flops =                                                \
      2.0 * 1.0e-9 * mat_size * mat_size * mat_size / elapsed;          \
    std::cerr << "array " << mat_size << " " << flops << " [GFLOPS] ";  \
    std::cerr << elapsed << " [ms]\n";                                  \
  } while (0)

int main() {
  cuda_ptr<double> x_mat, y_mat, z_mat;
  cuda_ptr<double> x_mat_bl, y_mat_bl, z_mat_bl;

  x_mat.allocate(mat_size * mat_size);
  y_mat.allocate(mat_size * mat_size);
  z_mat.allocate(mat_size * mat_size);

  std::mt19937 mt;
  std::uniform_real_distribution<double> urd(0, 1.0);
  std::generate_n(&x_mat[0], mat_size * mat_size, [&mt, &urd](){return urd(mt);});
  std::generate_n(&y_mat[0], mat_size * mat_size, [&mt, &urd](){return urd(mt);});
  std::fill_n(&z_mat[0], mat_size * mat_size, 0.0);

  x_mat.host2dev();
  y_mat.host2dev();
  z_mat.host2dev();

  double *x_mat_ref = new double [mat_size * mat_size];
  double *y_mat_ref = new double [mat_size * mat_size];
  double *z_mat_ref = new double [mat_size * mat_size];

  std::copy_n(&x_mat[0], mat_size * mat_size, x_mat_ref);
  std::copy_n(&y_mat[0], mat_size * mat_size, y_mat_ref);
  std::copy_n(&z_mat[0], mat_size * mat_size, z_mat_ref);
  BENCH(reference(x_mat_ref, y_mat_ref, z_mat_ref));

#if 0
  const auto tot_threads = mat_size * mat_size;
  const auto tb_size = 128;
  const auto gr_size = (tot_threads - 1) / tb_size + 1;
  BENCH_CUDA(dgemm, gr_size, tb_size, x_mat, y_mat, z_mat);
  z_mat.dev2host();
  check(z_mat_ref, &z_mat[0]);
#else
  cublasHandle_t handle;
  cublasSafeCall(cublasCreate(&handle));
  show_version(handle);
  BENCH(dgemm_cublas(x_mat, y_mat, z_mat, handle));
  cublasSafeCall(cublasDestroy(handle));
  z_mat.dev2host();
  check_cublas(z_mat_ref, &z_mat[0]);
#endif

  delete [] x_mat_ref;
  delete [] y_mat_ref;
  delete [] z_mat_ref;
}
