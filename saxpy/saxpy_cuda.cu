#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include "cuda_ptr.cuh"

__global__ void saxpy(const double* __restrict__ x,
                      const double* __restrict__ y,
                      double* __restrict__ z,
                      const double s,
                      const int val_size) {
  const auto tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid < val_size) {
    z[tid] = s * x[tid] + y[tid];
  }
}

__global__ void saxpy2(const double2* __restrict__ x,
                       const double2* __restrict__ y,
                       double2* __restrict__ z,
                       const double s,
                       const int val_size) {
  const auto tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid < val_size) {
    z[tid].x = s * x[tid].x + y[tid].x;
    z[tid].y = s * x[tid].y + y[tid].y;
  }
}

void reference(const std::vector<double>& x,
               const std::vector<double>& y,
               std::vector<double>& z,
               const double s) {
  const int size = x.size();
  for (int i = 0; i < size; i++) {
    z[i] = s * x[i] + y[i];
  }
}

void check(const std::vector<double>& z_ref,
           const double* z) {
  const auto size = z_ref.size();
  for (size_t i = 0; i < size; i++) {
    if (z_ref[i] != z[i]) {
      std::cout << "mismatch\n";
      std::cout << i << " " << z_ref[i] << " " << z[i] << std::endl;
      std::exit(1);
    }
  }
}

#define BENCH(repr)                                                     \
  do {                                                                  \
    const auto beg = std::chrono::system_clock::now();                  \
    repr;                                                               \
    const auto end = std::chrono::system_clock::now();                  \
    std::cerr <<                                                        \
      #repr << " " <<                                                   \
      std::chrono::duration_cast<std::chrono::microseconds>(end - beg).count() << \
      " [microsec]\n";                                                  \
  } while(0)

#define BENCH_CUDA(repr, gl_size, tb_size, ...)                         \
  do {                                                                  \
    const auto beg = std::chrono::system_clock::now();                  \
    repr<<<gl_size, tb_size>>>(__VA_ARGS__) ;                           \
    checkCudaErrors(cudaDeviceSynchronize());                           \
    const auto end = std::chrono::system_clock::now();                  \
    std::cerr <<                                                        \
      #repr << " " <<                                                   \
      std::chrono::duration_cast<std::chrono::microseconds>(end - beg).count() << \
      " [microsec]\n";                                                  \
  } while(0)

int main(const int argc, const char* argv[]) {
  int val_size = 10000000;
  if (argc == 2) {
    val_size = std::atoi(argv[1]);
    std::cout << "array size is set to " << val_size << std::endl;
  } else {
    std::cout << "array size is default " << val_size << std::endl;
  }

  const double s = 2.0;

  cuda_ptr<double> x_vec, y_vec, z_vec;
  cuda_ptr<double2> x2_vec, y2_vec, z2_vec;

  x_vec.allocate(val_size); x2_vec.allocate(val_size / 2);
  y_vec.allocate(val_size); y2_vec.allocate(val_size / 2);
  z_vec.allocate(val_size); z2_vec.allocate(val_size / 2);

  std::mt19937 mt;
  std::uniform_real_distribution<double> urd(0, 1.0);
  std::generate_n(&x_vec[0], val_size, [&mt, &urd](){return urd(mt);});
  std::generate_n(&y_vec[0], val_size, [&mt, &urd](){return urd(mt);});
  std::fill_n(&z_vec[0], val_size, 0.0);

  for (int i = 0; i < val_size; i += 2) {
    x2_vec[i / 2].x = x_vec[i    ];
    x2_vec[i / 2].y = x_vec[i + 1];
    y2_vec[i / 2].x = y_vec[i    ];
    y2_vec[i / 2].y = y_vec[i + 1];
  }

  x_vec.host2dev(); x2_vec.host2dev();
  y_vec.host2dev(); y2_vec.host2dev();
  z_vec.host2dev(); z2_vec.host2dev();

  std::vector<double> x_vec_ref(val_size), y_vec_ref(val_size), z_vec_ref(val_size);

  std::copy_n(&x_vec[0], val_size, x_vec_ref.begin());
  std::copy_n(&y_vec[0], val_size, y_vec_ref.begin());
  std::copy_n(&z_vec[0], val_size, z_vec_ref.begin());
  BENCH(reference(x_vec_ref, y_vec_ref, z_vec_ref, s));

  const auto tb_size = 128;
  auto gl_size = (val_size - 1) / tb_size + 1;
  BENCH_CUDA(saxpy, gl_size, tb_size, x_vec, y_vec, z_vec, s, val_size);

  gl_size = (val_size / 2 - 1) / tb_size + 1;
  BENCH_CUDA(saxpy2, gl_size, tb_size, x2_vec, y2_vec, z2_vec, s, val_size / 2);

  z_vec.dev2host(); z2_vec.dev2host();
  check(z_vec_ref, &z_vec[0]);
  check(z_vec_ref, &z2_vec[0].x);
}
