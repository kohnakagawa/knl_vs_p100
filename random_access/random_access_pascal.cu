#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include "cuda_ptr.cuh"

__global__ void daxpy_random(const double* __restrict__ x,
                             const double* __restrict__ y,
                             double* __restrict__ z,
                             const double s,
                             const int* __restrict__ idx,
                             const int val_size) {
  const auto tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid < val_size) {
    const auto i = idx[tid];
    z[i] = s * x[i] + y[i];
  }
}

__attribute__((noinline))
void reference(const std::vector<double>& x,
               const std::vector<double>& y,
               std::vector<double>& z,
               const double s,
               const int* idx) {
  const int size = x.size();
  for (int i = 0; i < size; i++) {
    z[idx[i]] = s * x[idx[i]] + y[idx[i]];
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

#define BENCH(repr, size)                                               \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 1000;                                              \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++) repr;                                \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    const double band_width =                                           \
      3.0 * size * sizeof(double) / ((dur * 1.0e-3  / double(LOOP)) * 1.0e9); \
    std::cerr << "array " << size << " " << band_width << " [GB/s] ";   \
    std::cerr << dur <<  " [ms]\n";                                     \
  } while (0)

#define BENCH_CUDA(repr, size, gl_size, tb_size, ...)                   \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 1000;                                              \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++)                                      \
      repr<<<gl_size, tb_size>>>(__VA_ARGS__);                          \
    checkCudaErrors(cudaDeviceSynchronize());                           \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    const double band_width =                                           \
      3.0 * size * sizeof(double) / ((dur * 1.0e-3  / double(LOOP)) * 1.0e9); \
    std::cerr << "array " << size << " " << band_width << " [GB/s] ";   \
    std::cerr << dur <<  " [ms]\n";                                     \
  } while (0)

int main(const int argc, const char* argv[]) {
  int val_size = 1 << 25;
  int tb_size = 128;
  int rand_seed = 1000;
  if (argc >= 2) val_size = std::atoi(argv[1]);
  if (argc >= 3) tb_size = std::atoi(argv[2]);
  if (argc >= 4) rand_seed = std::atoi(argv[3]);

  if (tb_size < 64 || tb_size > 1024) {
    std::cerr << "thread block size is not appropriate.\n";
    std::exit(1);
  }

  const double s = 2.0;

  cuda_ptr<double> x_vec, y_vec, z_vec;
  cuda_ptr<int> idx;

  x_vec.allocate(val_size);
  y_vec.allocate(val_size);
  z_vec.allocate(val_size);
  idx.allocate(val_size);

  std::mt19937 mt;
  std::uniform_real_distribution<double> urd(0, 1.0);
  std::generate_n(&x_vec[0], val_size, [&mt, &urd](){return urd(mt);});
  std::generate_n(&y_vec[0], val_size, [&mt, &urd](){return urd(mt);});
  std::fill_n(&z_vec[0], val_size, 0.0);
  std::iota(&idx[0], &idx[0] + val_size, 0);
  std::shuffle(&idx[0], &idx[0] + val_size, std::mt19937(rand_seed));

  x_vec.host2dev();
  y_vec.host2dev();
  z_vec.host2dev();
  idx.host2dev();

  std::vector<double> x_vec_ref(val_size), y_vec_ref(val_size), z_vec_ref(val_size);

  std::copy_n(&x_vec[0], val_size, x_vec_ref.begin());
  std::copy_n(&y_vec[0], val_size, y_vec_ref.begin());
  std::copy_n(&z_vec[0], val_size, z_vec_ref.begin());
  reference(x_vec_ref, y_vec_ref, z_vec_ref, s, &idx[0]);

  auto gl_size = (val_size - 1) / tb_size + 1;
  BENCH_CUDA(daxpy_random, val_size, gl_size, tb_size, x_vec, y_vec, z_vec, s, idx, val_size);
  z_vec.dev2host();

  check(z_vec_ref, &z_vec[0]);
}
