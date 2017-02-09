#!/bin/sh

for i in 4000 5000 8000 10000 16000 32000
do
    ./sgemm_cublas_pascal.out $i
done
