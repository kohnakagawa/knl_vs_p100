#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include <fstream>
#include "../cuda_ptr.cuh"

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

typedef int Dtype;
// typedef double Dtype;

__global__ void make_hist(const int* val,
                          Dtype* bin,
                          const int val_size) {
  const auto tid = threadIdx.x + blockIdx.x * blockDim.x;
  if (tid < val_size) {
    const auto dst = val[tid];
    atomicAdd(&bin[dst], 1);
  }
}

__attribute__((noinline))
void reference(const std::vector<int>& val,
               std::vector<Dtype>& bin) {
  for (const auto v : val) {
    bin[v] += 1.0;
  }
}

void check(const std::vector<Dtype>& bin_ref,
           const cuda_ptr<Dtype>& bin) {
  const auto size = bin_ref.size();
  for (size_t i = 0; i < size; i++) {
    if (bin_ref[i] != bin[i]) {
      std::cout << "mismatch\n";
      std::cout << bin_ref[i] << " " << bin[i] << std::endl;
      std::exit(1);
    }
  }
}

#define BENCH(repr, max, size, sd)                                      \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 100;                                               \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++) repr;                                \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    std::cerr << "range [0 : " << max << "] ";                          \
    if (sd == 0) {                                                      \
      std::cerr << "uniform ";                                          \
    } else {                                                            \
      std::cerr << "sd " << sd << " ";                                  \
    }                                                                   \
    std::cerr << "array size " << size << " ";                          \
    std::cerr << dur << " [ms]\n";                                      \
  } while(0)

#define BENCH_CUDA(repr, max, size, sd, gr_size, tb_size, ...)          \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 100;                                               \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++)                                      \
      repr<<<gr_size, tb_size>>>(__VA_ARGS__) ;                         \
    checkCudaErrors(cudaDeviceSynchronize());                           \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    std::cerr << "range [0 : " << max << "] ";                          \
    if (sd == 0) {                                                      \
      std::cerr << "uniform ";                                          \
    } else {                                                            \
      std::cerr << "sd " << sd << " ";                                  \
    }                                                                   \
    std::cerr << "array size " << size << " ";                          \
    std::cerr << dur << " [ms]\n";                                      \
  } while (0)

int main(const int argc, const char* argv[]) {
  int val_size = 10000000;
  int bin_size = 1000;
  double sd = 0;
  if (argc >= 2) val_size = std::atoi(argv[1]);
  if (argc >= 3) bin_size = std::atoi(argv[2]);
  if (argc >= 4) sd       = std::atof(argv[3]);

  cuda_ptr<int> val;
  cuda_ptr<Dtype> bin;

  val.allocate(val_size);
  bin.allocate(bin_size);

  std::mt19937 mt;
  if (sd == 0) {
    std::uniform_int_distribution<> uid(0, bin_size - 1);
    std::generate_n(&val[0], val_size, [&mt, &uid](){return uid(mt);});
  } else if (sd > 0.0) {
    std::normal_distribution<> nd(bin_size / 2, sd);
    int cnt = 0;
    while (true) {
      const auto ret = int(std::floor(nd(mt)));
      if (ret >= 0 && ret < bin_size) val[cnt++] = ret;
      if (cnt == val_size) break;
    }
  } else {
    std::cerr << "sd should be >= 0.\n";
    std::exit(1);
  }

  std::fill_n(&bin[0], bin_size, 0.0);

  val.host2dev();
  bin.host2dev();

  std::vector<int> val_ref(val_size);
  std::vector<Dtype> bin_ref(bin_size);

  std::copy_n(&val[0], val_size, val_ref.begin());
  BENCH(reference(val_ref, bin_ref), bin_size, val_size, sd);

  const auto tb_size = 128;
  const auto gr_size = (val_size - 1) / tb_size + 1;
  BENCH_CUDA(make_hist, bin_size, val_size, sd, gr_size, tb_size, val, bin, val_size);

  bin.dev2host();
  check(bin_ref, bin);
}
