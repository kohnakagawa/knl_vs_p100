#!/bin/sh

for tb_size in 64 128 256 512
do
    # ./daxpy_random_pascal.out 67108864 $tb_size
    # ./daxpy_random_pascal.out 33554432 $tb_size
    # ./daxpy_random_pascal.out 16777216 $tb_size
    # ./daxpy_random_pascal.out 8388608 $tb_size
    # ./daxpy_random_pascal.out 4194304 $tb_size
    # ./daxpy_random_pascal.out 2097152 $tb_size
    ./daxpy_random_pascal.out 1048600 $tb_size
    ./daxpy_random_pascal.out 524288 $tb_size
    ./daxpy_random_pascal.out 262144 $tb_size
    ./daxpy_random_pascal.out 139888 $tb_size
    ./daxpy_random_pascal.out 65536 $tb_size
    ./daxpy_random_pascal.out 32768 $tb_size
    ./daxpy_random_pascal.out 16384 $tb_size
    ./daxpy_random_pascal.out 8192 $tb_size
done
