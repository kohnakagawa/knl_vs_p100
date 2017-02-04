#!/bin/sh

# without mcdram
./daxpy_knl.out 67108864 0
./daxpy_knl.out 33554432 0
./daxpy_knl.out 16777216 0
./daxpy_knl.out 8388608 0
./daxpy_knl.out 4194304 0
./daxpy_knl.out 2097152 0
./daxpy_knl.out 1048576 0
./daxpy_knl.out 524288 0
./daxpy_knl.out 262144 0
./daxpy_knl.out 131072 0
./daxpy_knl.out 65536 0
./daxpy_knl.out 32768 0

# with mcdram
./daxpy_knl.out 67108864 1
./daxpy_knl.out 33554432 1
./daxpy_knl.out 16777216 1
./daxpy_knl.out 8388608 1
./daxpy_knl.out 4194304 1
./daxpy_knl.out 2097152 1
./daxpy_knl.out 1048576 1
./daxpy_knl.out 524288 1
./daxpy_knl.out 262144 1
./daxpy_knl.out 131072 1
./daxpy_knl.out 65536 1
./daxpy_knl.out 32768 1
