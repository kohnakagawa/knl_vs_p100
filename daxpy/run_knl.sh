#!/bin/sh

# export OMP_NUM_THREADS=16
# export KMP_AFFINITY=granularity=fine,proclist=[0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30],explicit

# export OMP_NUM_THREADS=34
# export KMP_AFFINITY=granularity=fine,proclist=[0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66],explicit

export OMP_NUM_THREADS=68
export KMP_AFFINITY=granularity=fine,proclist=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67],explicit

# export OMP_NUM_THREADS=272
# export KMP_AFFINITY=compact

# flat mode
# for touch in 0 1
# do
#     for use_mcdram in 0 1
#     do
#         ./daxpy_knl.out 67108864 $use_mcdram $touch
#         ./daxpy_knl.out 33554432 $use_mcdram $touch
#         ./daxpy_knl.out 16777216 $use_mcdram $touch
#         ./daxpy_knl.out 8388608 $use_mcdram $touch
#         ./daxpy_knl.out 4194304 $use_mcdram $touch
#         ./daxpy_knl.out 2097152 $use_mcdram $touch
#         ./daxpy_knl.out 1048600 $use_mcdram $touch
#         ./daxpy_knl.out 524288 $use_mcdram $touch
#         ./daxpy_knl.out 262144 $use_mcdram $touch
#         ./daxpy_knl.out 139888 $use_mcdram $touch
#         ./daxpy_knl.out 65536 $use_mcdram $touch
#         ./daxpy_knl.out 32768 $use_mcdram $touch
#     done
# done

# cache mode
for touch in 0 1
do
    ./daxpy_knl.out 67108864 0 $touch
    ./daxpy_knl.out 33554432 0 $touch
    ./daxpy_knl.out 16777216 0 $touch
    ./daxpy_knl.out 8388608 0 $touch
    ./daxpy_knl.out 4194304 0 $touch
    ./daxpy_knl.out 2097152 0 $touch
    ./daxpy_knl.out 1048600 0 $touch
    ./daxpy_knl.out 524288 0 $touch
    ./daxpy_knl.out 262144 0 $touch
    ./daxpy_knl.out 139888 0 $touch
    ./daxpy_knl.out 65536 0 $touch
    ./daxpy_knl.out 32768 0 $touch
done
