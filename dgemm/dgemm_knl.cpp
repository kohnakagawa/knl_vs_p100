#include <iostream>
#include <cstdlib>
#include <algorithm>
#include <random>
#include <chrono>
#include <x86intrin.h>

int mat_size = 4096;

// ver1
__attribute__((noinline))
void dgemm1(const double* __restrict x,
            const double* __restrict y,
            double* __restrict z) {
#pragma omp parallel
  {
    const auto N = mat_size;
    const auto vindex = _mm256_set_epi32(7 * N, 6 * N, 5 * N, 4 * N,
                                         3 * N, 2 * N,     N, 0);
#pragma omp for
    for (int i = 0; i < N; i++) {
      for (int j = 0; j < N; j++) {
        auto sum_vec = _mm512_setzero_pd();
        for (int k = 0; k < N; k += 8) {
          const auto xvec = _mm512_load_pd(&x[N * i + k]);
          const auto yvec = _mm512_i32gather_pd(vindex,
                                                &y[N * k + j],
                                                8);
          sum_vec = _mm512_fmadd_pd(xvec, yvec, sum_vec);
        }
        z[N * i + j] = _mm512_reduce_add_pd(sum_vec);
      }
    }
  }
}

// ver2
__attribute__((noinline))
void dgemm2(const double* __restrict x,
            const double* __restrict y,
            double* __restrict z) {
#pragma omp parallel
  {
    const auto N = mat_size;
    constexpr int nib = 4;
    constexpr int njb = 8; // fix
    constexpr int nkb = 8;

#pragma omp for
    for (int ib = 0; ib < N; ib += nib) {
      for (int kb = 0; kb < N; kb += nkb) {
        for (int jb = 0; jb < N; jb += njb) {
          auto sum0_vec = _mm512_load_pd(&z[N * ib       + jb]);
          auto sum1_vec = _mm512_load_pd(&z[N * (ib + 1) + jb]);
          auto sum2_vec = _mm512_load_pd(&z[N * (ib + 2) + jb]);
          auto sum3_vec = _mm512_load_pd(&z[N * (ib + 3) + jb]);

          for (int k = kb; k < kb + nkb; k++) {
            const auto y_vec = _mm512_load_pd(&y[N * k + jb]);

            const auto x0_vec = _mm512_set1_pd(x[N * ib + k]);
            const auto x1_vec = _mm512_set1_pd(x[N * (ib + 1) + k]);
            const auto x2_vec = _mm512_set1_pd(x[N * (ib + 2) + k]);
            const auto x3_vec = _mm512_set1_pd(x[N * (ib + 3) + k]);

            sum0_vec = _mm512_fmadd_pd(x0_vec, y_vec, sum0_vec);
            sum1_vec = _mm512_fmadd_pd(x1_vec, y_vec, sum1_vec);
            sum2_vec = _mm512_fmadd_pd(x2_vec, y_vec, sum2_vec);
            sum3_vec = _mm512_fmadd_pd(x3_vec, y_vec, sum3_vec);
          }

          _mm512_store_pd(&z[N * ib       + jb], sum0_vec);
          _mm512_store_pd(&z[N * (ib + 1) + jb], sum1_vec);
          _mm512_store_pd(&z[N * (ib + 2) + jb], sum2_vec);
          _mm512_store_pd(&z[N * (ib + 3) + jb], sum3_vec);
        }
      }
    }
  }
}

// ver3
__attribute__((noinline))
void dgemm3(const double* __restrict x,
            const double* __restrict y,
            double* __restrict z) {
#pragma omp parallel
  {
    const auto N = mat_size;
    constexpr int nib = 4;
    constexpr int njb = 16;
    constexpr int nkb = 4;

#pragma omp for
    for (int ib = 0; ib < N; ib += nib) {
      for (int kb = 0; kb < N; kb += nkb) {
        for (int jb = 0; jb < N; jb += njb) {
          auto sum00_vec = _mm512_load_pd(&z[N * ib       + jb    ]);
          auto sum01_vec = _mm512_load_pd(&z[N * ib       + jb + 8]);
          auto sum10_vec = _mm512_load_pd(&z[N * (ib + 1) + jb    ]);
          auto sum11_vec = _mm512_load_pd(&z[N * (ib + 1) + jb + 8]);
          auto sum20_vec = _mm512_load_pd(&z[N * (ib + 2) + jb    ]);
          auto sum21_vec = _mm512_load_pd(&z[N * (ib + 2) + jb + 8]);
          auto sum30_vec = _mm512_load_pd(&z[N * (ib + 3) + jb    ]);
          auto sum31_vec = _mm512_load_pd(&z[N * (ib + 3) + jb + 8]);

          for (int k = kb; k < kb + nkb; k++) {
            const auto y0_vec = _mm512_load_pd(&y[N * k + jb    ]);
            const auto y1_vec = _mm512_load_pd(&y[N * k + jb + 8]);

            const auto x0_vec = _mm512_set1_pd(x[N * ib       + k]);
            const auto x1_vec = _mm512_set1_pd(x[N * (ib + 1) + k]);
            const auto x2_vec = _mm512_set1_pd(x[N * (ib + 2) + k]);
            const auto x3_vec = _mm512_set1_pd(x[N * (ib + 3) + k]);

            sum00_vec = _mm512_fmadd_pd(x0_vec, y0_vec, sum00_vec);
            sum01_vec = _mm512_fmadd_pd(x0_vec, y1_vec, sum01_vec);

            sum10_vec = _mm512_fmadd_pd(x1_vec, y0_vec, sum10_vec);
            sum11_vec = _mm512_fmadd_pd(x1_vec, y1_vec, sum11_vec);

            sum20_vec = _mm512_fmadd_pd(x2_vec, y0_vec, sum20_vec);
            sum21_vec = _mm512_fmadd_pd(x2_vec, y1_vec, sum21_vec);

            sum30_vec = _mm512_fmadd_pd(x3_vec, y0_vec, sum30_vec);
            sum31_vec = _mm512_fmadd_pd(x3_vec, y1_vec, sum31_vec);
          }

          _mm512_store_pd(&z[N * ib       + jb    ], sum00_vec);
          _mm512_store_pd(&z[N * ib       + jb + 8], sum01_vec);
          _mm512_store_pd(&z[N * (ib + 1) + jb    ], sum10_vec);
          _mm512_store_pd(&z[N * (ib + 1) + jb + 8], sum11_vec);
          _mm512_store_pd(&z[N * (ib + 2) + jb    ], sum20_vec);
          _mm512_store_pd(&z[N * (ib + 2) + jb + 8], sum21_vec);
          _mm512_store_pd(&z[N * (ib + 3) + jb    ], sum30_vec);
          _mm512_store_pd(&z[N * (ib + 3) + jb + 8], sum31_vec);
        }
      }
    }
  }
}

__attribute__((noinline))
void reference(const double* __restrict x,
               const double* __restrict y,
               double* __restrict z,
               const int N = mat_size) {
#pragma omp parallel for
  for (int i = 0; i < N; i++)
    for (int j = 0; j < N; j++)
      for (int k = 0; k < N; k++)
        z[N * i + j] += x[N * i + k] * y[N * k + j];
}

void check(const double* z_ref,
           const double* z,
           const double eps = 1.0e-8) {
  for (int i = 0; i < mat_size * mat_size; i++) {
    if (std::abs(z_ref[i] - z[i]) / z[i] >= eps) {
      std::cout << "mismatch\n";
      std::cout << z_ref[i] << " " << z[i] << std::endl;
      std::exit(1);
    }
  }
}

#define BENCH(repr)                                                     \
  do {                                                                  \
    using namespace std::chrono;                                        \
    const int LOOP = 20;                                                \
    const auto beg = system_clock::now();                               \
    for (int i = 0; i < LOOP; i++) repr;                                \
    const auto end = system_clock::now();                               \
    const double elapsed =                                              \
      duration_cast<milliseconds>(end - beg).count();                   \
    const double flops =                                                \
      mat_size * mat_size * (2.0 * mat_size - 1.0) / ((elapsed * 1.0e-3 / double(LOOP)) * 1.0e9); \
    std::cerr << "array " << mat_size << " " << flops << " [GFLOPS] ";  \
    std::cerr << elapsed << " [ms]\n";                                  \
  } while (0)

int main(const int argc, const char* argv[]) {
  double *x_mat = nullptr;
  double *y_mat = nullptr;
  double *z_mat = nullptr;

  if (argc >= 2) mat_size = std::atoi(argv[1]);

  const int tot_size = mat_size * mat_size * sizeof(double);

  posix_memalign((void**)&x_mat, 64, tot_size);
  posix_memalign((void**)&y_mat, 64, tot_size);
  posix_memalign((void**)&z_mat, 64, tot_size);

  double *x_mat_ref = new double [mat_size * mat_size];
  double *y_mat_ref = new double [mat_size * mat_size];
  double *z_mat_ref = new double [mat_size * mat_size];

#pragma omp parallel for
  for (int i = 0; i < mat_size * mat_size; i++) {
    x_mat[i] = double(i + 1);
    y_mat[i] = double(-i - 1);
    z_mat[i] = 0.0;
  }

  std::copy_n(x_mat, mat_size * mat_size, x_mat_ref);
  std::copy_n(y_mat, mat_size * mat_size, y_mat_ref);
  std::copy_n(z_mat, mat_size * mat_size, z_mat_ref);
  BENCH(reference(x_mat_ref, y_mat_ref, z_mat_ref));
  BENCH(dgemm3(x_mat, y_mat, z_mat));
  check(z_mat_ref, z_mat);

  free(x_mat);
  free(y_mat);
  free(z_mat);

  delete [] x_mat_ref;
  delete [] y_mat_ref;
  delete [] z_mat_ref;
}
