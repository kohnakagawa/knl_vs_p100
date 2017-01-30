#include <iostream>
#include <algorithm>
#include <random>
#include <chrono>
#include <hbwmalloc.h>

void make_hist(const int* val,
               double* bin,
               const int val_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
#pragma omp atomic
    bin[val[i]] += 1.0;
  }
}

void reference(const std::vector<int>& val,
               std::vector<double>& bin) {
  for (const auto v : val) {
    bin[v] += 1.0;
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

void check(const std::vector<double>& bin_ref,
           const double* bin) {
  const auto size = bin_ref.size();
  for (size_t i = 0; i < size; i++) {
    if (bin_ref[i] != bin[i]) {
      std::cout << "mismatch\n";
      std::cout << bin_ref[i] << " " << bin[i] << std::endl;
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
      #repr << " " <<                                                    \
      std::chrono::duration_cast<std::chrono::microseconds>(end - beg).count() << \
      " [microsec]\n";                                                  \
  } while(0)

int main(const int argc, const char* argv[]) {
  int val_size = 10000000;
  const int bin_size = 1000;
  if (argc == 2) {
    val_size = std::atoi(argv[1]);
    std::cout << "array size is set to " << val_size << std::endl;
  } else {
    std::cout << "array size is default " << val_size << std::endl;
  }

  int* val = nullptr;
  double* bin = nullptr;
#if 0
  posix_memalign((void**)&val, 64, val_size * sizeof(int));
  posix_memalign((void**)&bin, 64, bin_size * sizeof(double));
#else
  hbw_posix_memalign((void**)&val, 64, val_size * sizeof(int));
  hbw_posix_memalign((void**)&bin, 64, bin_size * sizeof(double));
#endif

  first_touch(val, val_size, bin, bin_size);

  std::mt19937 mt;
  std::uniform_int_distribution<> uid(0, bin_size - 1);
  std::generate_n(val, val_size, [&mt, &uid](){return uid(mt);});
  std::fill_n(bin, bin_size, 0.0);

  std::vector<int> val_ref(val_size);
  std::vector<double> bin_ref(bin_size);

  std::copy_n(val, val_size, val_ref.begin());

  BENCH(reference(val_ref, bin_ref));
  BENCH(make_hist(val, bin, val_size));
  check(bin_ref, bin);

#if 0
  free(val);
  free(bin);
#else
  hbw_free(val);
  hbw_free(bin);
#endif
}
