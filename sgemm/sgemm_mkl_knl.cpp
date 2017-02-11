#include <cstdio>
#include <cstdlib>
#include "mkl.h"
#include <omp.h>
#include <chrono>

// from intel mkl sgemm example
// https://software.intel.com/en-us/node/529735

#define min(x,y) (((x) < (y)) ? (x) : (y))

int main(const int argc, const char* argv[]) {
  int array_size = 10000;
  if (argc >= 2) array_size = std::atoi(argv[1]);

  float *A, *B, *C;
  int m, n, k, i, j;
  float alpha, beta;

  printf ("\n This example computes real matrix C=alpha*A*B+beta*C using \n"
            " Intel(R) MKL function sgemm, where A, B, and  C are matrices and \n"
	  " alpha and beta are float precision scalars\n\n");

  m = array_size, k = array_size, n = array_size;
  printf (" Initializing data for matrix multiplication C=A*B for matrix \n"
	  " A(%ix%i) and matrix B(%ix%i)\n\n", m, k, k, n);
  alpha = 1.0; beta = 0.0;

  printf (" Allocating memory for matrices aligned on 64-byte boundary for better \n"
	  " performance \n\n");
  A = (float *)mkl_malloc( m*k*sizeof( float ), 64 );
  B = (float *)mkl_malloc( k*n*sizeof( float ), 64 );
  C = (float *)mkl_malloc( m*n*sizeof( float ), 64 );
  if (A == NULL || B == NULL || C == NULL) {
    printf( "\n ERROR: Can't allocate memory for matrices. Aborting... \n\n");
    mkl_free(A);
    mkl_free(B);
    mkl_free(C);
    return 1;
  }

  printf (" Intializing matrix data \n\n");
#pragma omp parallel for
  for (i = 0; i < (m*k); i++) {
    A[i] = (float)(i+1);
  }
#pragma omp parallel for
  for (i = 0; i < (k*n); i++) {
    B[i] = (float)(-i-1);
  }
#pragma omp parallel for
  for (i = 0; i < (m*n); i++) {
    C[i] = 0.0;
  }

  // dry run
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
              m, n, k, alpha, A, k, B, n, beta, C, n);

  // benchmark
  printf (" Computing matrix product using Intel(R) MKL sgemm function via CBLAS interface \n\n");
  double dtime;
  using namespace std::chrono;
  const auto beg = system_clock::now();
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
	      m, n, k, alpha, A, k, B, n, beta, C, n);
  const auto end = system_clock::now();
  dtime = 1.0e-3 * duration_cast<milliseconds>(end - beg).count();

  printf ("\n Computations completed.\n\n");
  fprintf(stderr, "array %d %f [GFLOPS] %f [ms]\n", m, 1e-9*m*n*(2.0 * k - 1.0)/dtime, dtime);

  printf (" Top left corner of matrix A: \n");
  for (i=0; i<min(m,6); i++) {
    for (j=0; j<min(k,6); j++) {
      printf ("%7.0f", A[j+i*k]);
    }
    printf ("\n");
  }

  printf ("\n Top left corner of matrix B: \n");
  for (i=0; i<min(k,6); i++) {
    for (j=0; j<min(n,6); j++) {
      printf ("%7.0f", B[j+i*n]);
    }
    printf ("\n");
  }

  printf ("\n Top left corner of matrix C: \n");
  for (i=0; i<min(m,6); i++) {
    for (j=0; j<min(n,6); j++) {
      printf ("%7.5G", C[j+i*n]);
    }
    printf ("\n");
  }

  printf ("\n Deallocating memory \n\n");
  mkl_free(A);
  mkl_free(B);
  mkl_free(C);

  printf (" Example completed. \n\n");
}
