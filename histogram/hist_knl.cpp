#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include <hbwmalloc.h>

__attribute__((noinline))
void make_hist(const int* val,
               double* bin,
               const int val_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
#pragma omp atomic
    bin[val[i]] += 1.0;
  }
}

__attribute__((noinline))
void reference(const int* val,
               double* bin,
               const int val_size) {
  for (int i = 0; i < val_size; i++) {
    bin[val[i]] += 1.0;
  }
}

__attribute__((noinline))
void reference_novector(const int* val,
                        double* bin,
                        const int val_size) {
#pragma novector
  for (int i = 0; i < val_size; i++) {
    bin[val[i]] += 1.0;
  }
}

void first_touch(int* val,
                 const int val_size,
                 double* bin,
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

void check(const double* bin_ref,
           const double* bin,
           const int size) {
  for (int i = 0; i < size; i++) {
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
    std::cerr << "bin [0 : " << max << "] ";                            \
    std::cerr << "array size " << size << " ";                          \
    std::cerr << dur << " [ms]\n";                                       \
  } while (0)

int main(const int argc, const char* argv[]) {
  int val_size = 10000000;
  int bin_size = 1000;
  if (argc >= 2) val_size   = std::atoi(argv[1]);
  if (argc >= 3) bin_size   = std::atoi(argv[2]);

  int* val = nullptr;
  double* bin = nullptr;

  posix_memalign((void**)&val, 64, val_size * sizeof(int));
  posix_memalign((void**)&bin, 64, bin_size * sizeof(double));

  first_touch(val, val_size, bin, bin_size);

  std::mt19937 mt;
  std::uniform_int_distribution<> uid(0, bin_size - 1);
  std::generate_n(val, val_size, [&mt, &uid](){return uid(mt);});
  std::fill_n(bin, bin_size, 0.0);

  std::vector<int> val_ref(val_size), val_ref2(val_size);
  std::vector<double> bin_ref(bin_size), bin_ref2(bin_size);

  std::copy_n(val, val_size, val_ref.begin());
  std::copy_n(val, val_size, val_ref2.begin());

  BENCH(reference(&val_ref[0], &bin_ref[0], val_size), bin_size, val_size);
  BENCH(reference_novector(&val_ref2[0], &bin_ref2[0], val_size), bin_size, val_size);
  BENCH(make_hist(val, bin, val_size), bin_size, val_size);
  check(&bin_ref[0], bin, bin_size);
  check(&bin_ref2[0], &bin_ref[0], bin_size);

  free(val);
  free(bin);
}
