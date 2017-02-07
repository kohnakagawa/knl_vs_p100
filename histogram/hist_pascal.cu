#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include "cuda_ptr.cuh"

#if __CUDACC_VER_MAJOR__ < 8
__device__ __forceinline__ double atomicAdd(double* address, double val) {
  auto address_as_ull = reinterpret_cast<unsigned long long int*>(address);
  unsigned long long int old = *address_as_ull, assumed;
  do {
    assumed = old;
    old = atomicCAS(address_as_ull, assumed,
                    __double_as_longlong(val + __longlong_as_double(assumed)));
  } while (assumed != old);
  return __longlong_as_double(old);
}
#endif

__global__ void make_hist(const int* val,
                          double* bin,
                          const int val_size) {
  const auto tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid < val_size) {
    const auto dst = val[tid];
    atomicAdd(&bin[dst], 1.0);
  }
}

__attribute__((noinline))
void reference(const std::vector<int>& val,
               std::vector<double>& bin) {
  for (const auto v : val) {
    bin[v] += 1.0;
  }
}

void check(const std::vector<double>& bin_ref,
           const cuda_ptr<double>& bin) {
  const auto size = bin_ref.size();
  for (size_t i = 0; i < size; i++) {
    if (bin_ref[i] != bin[i]) {
      std::cout << "mismatch\n";
      std::cout << bin_ref[i] << " " << bin[i] << std::endl;
      std::exit(1);
    }
  }
}

#define BENCH(repr, max, size)                                          \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 100;                                               \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++) repr;                                \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    std::cerr << "range [0 : " << max << "] ";                          \
    std::cerr << "array size " << size << " ";                          \
    std::cerr << dur << " [ms]\n";                                       \
  } while(0)


#define BENCH_CUDA(repr, max, size, gl_size, tb_size, ...)              \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 100;                                               \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++)                                      \
      repr<<<gl_size, tb_size>>>(__VA_ARGS__) ;                         \
    checkCudaErrors(cudaDeviceSynchronize());                           \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    std::cerr << "range [0 : " << max << "] ";                          \
    std::cerr << "array size " << size << " ";                          \
    std::cerr << dur << " [ms]\n";                                       \
  } while (0)

int main(const int argc, const char* argv[]) {
  int val_size = 10000000;
  int bin_size = 1000;
  if (argc >= 2) val_size   = std::atoi(argv[1]);
  if (argc >= 3) bin_size   = std::atoi(argv[2]);

  cuda_ptr<int> val;
  cuda_ptr<double> bin;

  val.allocate(val_size);
  bin.allocate(bin_size);

  std::mt19937 mt;
  std::uniform_int_distribution<> uid(0, bin_size - 1);
  std::generate_n(&val[0], val_size, [&mt, &uid](){return uid(mt);});
  std::fill_n(&bin[0], bin_size, 0.0);

  val.host2dev();
  bin.host2dev();

  std::vector<int> val_ref(val_size);
  std::vector<double> bin_ref(bin_size);

  std::copy_n(&val[0], val_size, val_ref.begin());
  BENCH(reference(val_ref, bin_ref), bin_size, val_size);

  const auto tb_size = 128;
  const auto gl_size = (val_size - 1) / tb_size + 1;
  BENCH_CUDA(make_hist, bin_size, val_size, gl_size, tb_size, val, bin, val_size);

  bin.dev2host();
  check(bin_ref, bin);
}
