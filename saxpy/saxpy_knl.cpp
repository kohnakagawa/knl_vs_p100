#include <iostream>
#include <cstdlib>
#include <algorithm>
#include <random>
#include <chrono>
#include <x86intrin.h>
#include <hbwmalloc.h>

void saxpy(const double* __restrict x,
           const double* __restrict y,
           double* __restrict z,
           const double s,
           const int val_size) {
#pragma omp parallel
  {
    const auto size = val_size;
    const auto s_vec = _mm512_set1_pd(s);
#pragma omp for
    for (int i = 0; i < size; i += 8) {
      const auto x_vec = _mm512_load_pd(x + i);
      const auto y_vec = _mm512_load_pd(y + i);
      const auto dst   = _mm512_fmadd_pd(s_vec, x_vec, y_vec);
      _mm512_store_pd(z + i, dst);
    }
  }
}

void saxpy2(const double* __restrict x,
            const double* __restrict y,
            double* __restrict z,
            const double s,
            const int val_size) {
#pragma omp parallel
  {
    const auto size = val_size;
    const auto s_vec = _mm512_set1_pd(s);
#pragma omp for
    for (int i = 0; i < size; i += 8) {
      const auto dst = _mm512_fmadd_pd(s_vec,
                                       _mm512_load_pd(x + i),
                                       _mm512_load_pd(y + i));
      _mm512_stream_pd(z + i, dst);
    }
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

void first_touch(double* x,
                 double* y,
                 double* z,
                 const int val_size) {
#pragma omp parallel for
  for (int i = 0; i < val_size; i++) {
    x[i] = y[i] = z[i] = 0.0;
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
  if (argc == 2) {
    val_size = std::atoi(argv[1]);
    std::cout << "array size is set to " << val_size << std::endl;
  } else {
    std::cout << "array size is default " << val_size << std::endl;
  }

  const double s = 2.0;

  double *x_vec = nullptr;
  double *y_vec = nullptr;
  double *z_vec = nullptr;

#if 0
  posix_memalign((void**)&x_vec, 64, val_size * sizeof(double));
  posix_memalign((void**)&y_vec, 64, val_size * sizeof(double));
  posix_memalign((void**)&z_vec, 64, val_size * sizeof(double));
#else
  hbw_posix_memalign((void**)&x_vec, 64, val_size * sizeof(double));
  hbw_posix_memalign((void**)&y_vec, 64, val_size * sizeof(double));
  hbw_posix_memalign((void**)&z_vec, 64, val_size * sizeof(double));
#endif

  first_touch(x_vec, y_vec, z_vec, val_size);

  std::mt19937 mt;
  std::uniform_real_distribution<double> urd(0, 1.0);
  std::generate_n(&x_vec[0], val_size, [&mt, &urd](){return urd(mt);});
  std::generate_n(&y_vec[0], val_size, [&mt, &urd](){return urd(mt);});
  std::fill_n(&z_vec[0], val_size, 0.0);

  std::vector<double> x_vec_ref(val_size), y_vec_ref(val_size), z_vec_ref(val_size);

  std::copy_n(&x_vec[0], val_size, x_vec_ref.begin());
  std::copy_n(&y_vec[0], val_size, y_vec_ref.begin());
  std::copy_n(&z_vec[0], val_size, z_vec_ref.begin());
  BENCH(reference(x_vec_ref, y_vec_ref, z_vec_ref, s));

  BENCH(saxpy2(x_vec, y_vec, z_vec, s, val_size));
  check(z_vec_ref, z_vec);

#if 0
  free(x_vec);
  free(y_vec);
  free(z_vec);
#else
  hbw_free(x_vec);
  hbw_free(y_vec);
  hbw_free(z_vec);
#endif
}
