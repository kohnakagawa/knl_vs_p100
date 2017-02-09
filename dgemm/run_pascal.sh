#!/bin/sh

for i in 2000 3000 5000 8000 10000 16000
do
    ./dgemm_cublas_pascal.out $i
done
