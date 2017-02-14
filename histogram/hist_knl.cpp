#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>

typedef int Dtype;
// typedef double Dtype;

__attribute__((noinline))
void make_hist(const int* val,
               Dtype* bin,
               const int val_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
#pragma omp atomic
    bin[val[i]]++;
  }
}

__attribute__((noinline))
void make_hist_critical(const int* val,
                        Dtype* bin,
                        const int val_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
#pragma omp critical
    {
      bin[val[i]]++;
    }
  }
}

__attribute__((noinline))
void reference(const int* val,
               Dtype* bin,
               const int val_size) {
  for (int i = 0; i < val_size; i++) {
    bin[val[i]] += 1.0;
  }
}

__attribute__((noinline))
void reference_novector(const int* val,
                        Dtype* bin,
                        const int val_size) {
#pragma novector
  for (int i = 0; i < val_size; i++) {
    bin[val[i]] += 1.0;
  }
}

void first_touch(int* val,
                 const int val_size,
                 Dtype* bin,
                 const int bin_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
    val[i] = 0;
  }
#pragma omp parallel for
  for (int i = 0; i < bin_size; i++) {
    bin[i] = 0.0;
  }
}

void check(const Dtype* bin_ref,
           const Dtype* bin,
           const int size) {
  for (int i = 0; i < size; i++) {
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
  } while (0)

int main(const int argc, const char* argv[]) {
  int val_size = 10000000;
  int bin_size = 1000;
  double sd = 0;
  if (argc >= 2) val_size = std::atoi(argv[1]);
  if (argc >= 3) bin_size = std::atoi(argv[2]);
  if (argc >= 4) sd       = std::atof(argv[3]);

  // allocate resources
  int   *val = nullptr, *val_ref = nullptr, *val_ref2 = nullptr, *val_ref3 = nullptr;
  Dtype *bin = nullptr, *bin_ref = nullptr, *bin_ref2 = nullptr, *bin_ref3 = nullptr;
  posix_memalign((void**)&val,      64, val_size * sizeof(int));
  posix_memalign((void**)&bin,      64, bin_size * sizeof(Dtype));
  posix_memalign((void**)&val_ref,  64, val_size * sizeof(int));
  posix_memalign((void**)&bin_ref,  64, bin_size * sizeof(Dtype));
  posix_memalign((void**)&val_ref2, 64, val_size * sizeof(int));
  posix_memalign((void**)&bin_ref2, 64, bin_size * sizeof(Dtype));
  posix_memalign((void**)&val_ref3, 64, val_size * sizeof(int));
  posix_memalign((void**)&bin_ref3, 64, bin_size * sizeof(Dtype));

  // dist L2 cache data
  first_touch(val, val_size, bin, bin_size);

  // initialize
  std::mt19937 mt;
  if (sd == 0) {
    std::uniform_int_distribution<> uid(0, bin_size - 1);
    std::generate_n(val, val_size, [&mt, &uid](){return uid(mt);});
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

  std::copy_n(val, val_size, val_ref);
  std::copy_n(val, val_size, val_ref2);
  std::copy_n(val, val_size, val_ref3);

  std::fill_n(bin, bin_size, 0.0);
  std::copy_n(bin, bin_size, bin_ref);
  std::copy_n(bin, bin_size, bin_ref2);
  std::copy_n(bin, bin_size, bin_ref3);

  BENCH(reference(val_ref, bin_ref, val_size), bin_size, val_size, sd);
  BENCH(reference_novector(val_ref2, bin_ref2, val_size), bin_size, val_size, sd);
  BENCH(make_hist(val, bin, val_size), bin_size, val_size, sd);
  BENCH(make_hist_critical(val_ref3, bin_ref3, val_size), bin_size, val_size, sd);

  check(bin_ref, bin, bin_size);
  check(bin_ref2, bin_ref, bin_size);
  check(bin_ref3, bin_ref, bin_size);

  free(val);
  free(bin);
  free(val_ref);
  free(bin_ref);
  free(val_ref2);
  free(bin_ref2);
  free(val_ref3);
  free(bin_ref3);
}
