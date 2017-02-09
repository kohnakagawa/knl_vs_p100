#include <iostream>
#include <algorithm>
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

int mat_size = 10000;

void sgemm_cublas(const cuda_ptr<float>& x,
                  const cuda_ptr<float>& y,
                  cuda_ptr<float>& z,
                  const cublasHandle_t& handle) {
  const float alpha = 1.0, beta = 0.0;
  cublasSafeCall(cublasSgemm(handle,
                             CUBLAS_OP_N, CUBLAS_OP_N,
                             mat_size, mat_size, mat_size,
                             &alpha,
                             x, mat_size,
                             y, mat_size,
                             &beta,
                             z, mat_size));
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
    checkCudaErrors(cudaDeviceSynchronize());                           \
    const auto end = system_clock::now();                               \
    const double elapsed =                                              \
      1.0e-3 * duration_cast<milliseconds>(end - beg).count();          \
    const double flops =                                                \
      1.0e-9 * (2.0 * mat_size - 1) * mat_size * mat_size / elapsed;    \
    std::cerr << "array " << mat_size << " " << flops << " [GFLOPS] ";  \
    std::cerr << elapsed << " [ms]\n";                                  \
  } while (0)

int main(const int argc, const char* argv[]) {
  if (argc >= 2) mat_size = std::atoi(argv[1]);

  cuda_ptr<float> x_mat, y_mat, z_mat;

  x_mat.allocate(mat_size * mat_size);
  y_mat.allocate(mat_size * mat_size);
  z_mat.allocate(mat_size * mat_size);

  for (int i = 0; i < mat_size * mat_size; i++) {
    x_mat[i] = float(i + 1);
    y_mat[i] = float(- i - 1);
    z_mat[i] = 0.0;
  }

  x_mat.host2dev();
  y_mat.host2dev();
  z_mat.host2dev();

  cublasHandle_t handle;
  cublasSafeCall(cublasCreate(&handle));
  show_version(handle);
  BENCH(sgemm_cublas(x_mat, y_mat, z_mat, handle));
  cublasSafeCall(cublasDestroy(handle));
  z_mat.dev2host();

  printf (" Top left corner of matrix x_mat: \n");
  for (int i = 0; i < std::min(mat_size, 6); i++) {
    for (int j = 0; j < std::min(mat_size, 6); j++) {
      printf ("%12.0f", x_mat[j + i * mat_size]);
    }
    printf ("\n");
  }

  printf ("\n Top left corner of matrix y_mat: \n");
  for (int i = 0; i < std::min(mat_size, 6); i++) {
    for (int j = 0; j < std::min(mat_size, 6); j++) {
      printf ("%12.0f", y_mat[j + i * mat_size]);
    }
    printf ("\n");
  }

  printf ("\n Top left corner of matrix z_mat: \n");
  for (int i = 0; i < std::min(mat_size, 6); i++) {
    for (int j = 0; j < std::min(mat_size, 6); j++) {
      printf ("%12.5G", z_mat[j + i * mat_size]);
    }
    printf ("\n");
  }
}
