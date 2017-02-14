#include <iostream>
#include <cstdlib>
#include <algorithm>
#include <random>
#include <chrono>
#include <x86intrin.h>
#include <hbwmalloc.h>

__attribute__((noinline))
void daxpy_random(const double* __restrict x,
                  const double* __restrict y,
                  double* __restrict z,
                  const double s,
                  const int* __restrict idx,
                  const int val_size) {
#pragma omp parallel
  {
    const auto size = val_size;
    const auto s_vec = _mm512_set1_pd(s);
#pragma omp for nowait
    for (int i = 0; i < size; i += 8) {
      const auto vindex = _mm256_load_si256((const __m256i*)(&idx[i]));
      const auto x_vec = _mm512_i32gather_pd(vindex, x, 8);
      const auto y_vec = _mm512_i32gather_pd(vindex, y, 8);
      const auto z_vec = _mm512_fmadd_pd(s_vec, x_vec, y_vec);
      _mm512_i32scatter_pd(z, vindex, z_vec, 8);
    }
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

void first_touch(double* x,
                 double* y,
                 double* z,
                 int* idx,
                 const int val_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
    x[i] = y[i] = z[i] = 0.0;
    idx[i] = i;
  }
}

void check(const std::vector<double>& z_ref,
           const double* z) {
  const auto size = z_ref.size();
  for (size_t i = 0; i < size; i++) {
    if (z_ref[i] != z[i]) {
      std::cout << "mismatch\n";
      std::cout << z_ref[i] << " " << z[i] << std::endl;
      std::exit(1);
    }
  }
}

#define BENCH(repr, size)                                               \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 1000;                                             \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++) repr;                                \
    const auto end = system_clock::now();                               \
    const double dur = duration_cast<milliseconds>(end - beg).count();  \
    const double band_width =                                           \
      3.0 * size * sizeof(double) / ((dur * 1.0e-3  / double(LOOP)) * 1.0e9); \
    std::cerr << "array " << size << " " << band_width << " [GB/s] ";   \
    std::cerr << dur << " [ms]\n";                                      \
  } while (0)

int main(const int argc, const char* argv[]) {
  int val_size = 1 << 25;
  bool use_mcdram = true;
  bool touch = true;
  int rand_seed = 1000;
  if (argc >= 2) val_size = std::atoi(argv[1]);
  if (argc >= 3) use_mcdram = std::atoi(argv[2]);
  if (argc >= 4) touch = std::atoi(argv[3]);
  if (argc >= 5) rand_seed = std::atoi(argv[4]);

  const double s = 2.0;

  double *x_vec = nullptr;
  double *y_vec = nullptr;
  double *z_vec = nullptr;
  int *idx  = nullptr;

  if (use_mcdram) {
    hbw_posix_memalign((void**)&x_vec, 64, val_size * sizeof(double));
    hbw_posix_memalign((void**)&y_vec, 64, val_size * sizeof(double));
    hbw_posix_memalign((void**)&z_vec, 64, val_size * sizeof(double));
    hbw_posix_memalign((void**)&idx  , 32, val_size * sizeof(int));
  } else {
    posix_memalign((void**)&x_vec, 64, val_size * sizeof(double));
    posix_memalign((void**)&y_vec, 64, val_size * sizeof(double));
    posix_memalign((void**)&z_vec, 64, val_size * sizeof(double));
    posix_memalign((void**)&idx  , 32, val_size * sizeof(int));
  }

  if (touch) first_touch(x_vec, y_vec, z_vec, idx, val_size);

  std::shuffle(idx, idx + val_size, std::mt19937(rand_seed));

  std::mt19937 mt;
  std::uniform_real_distribution<double> urd(0, 1.0);
  std::generate_n(x_vec, val_size, [&mt, &urd](){return urd(mt);});
  std::generate_n(y_vec, val_size, [&mt, &urd](){return urd(mt);});
  std::fill_n(z_vec, val_size, 0.0);

  std::vector<double> x_vec_ref(val_size), y_vec_ref(val_size), z_vec_ref(val_size);

  std::copy_n(x_vec, val_size, x_vec_ref.begin());
  std::copy_n(y_vec, val_size, y_vec_ref.begin());
  std::copy_n(z_vec, val_size, z_vec_ref.begin());

  reference(x_vec_ref, y_vec_ref, z_vec_ref, s, idx);
  BENCH(daxpy_random(x_vec, y_vec, z_vec, s, idx, val_size), val_size);

  check(z_vec_ref, z_vec);

  if (use_mcdram) {
    hbw_free(x_vec);
    hbw_free(y_vec);
    hbw_free(z_vec);
    hbw_free(idx);
  } else {
    free(x_vec);
    free(y_vec);
    free(z_vec);
    free(idx);
  }
}
