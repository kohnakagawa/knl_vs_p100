#!/bin/sh

export OMP_NUM_THREADS=68
export KMP_AFFINITY=noverbose,granularity=fine,scatter

for i in 2000 3000 5000 8000 10000 16000 32000
do
    ./dgemm_mkl_knl.out $i
done
