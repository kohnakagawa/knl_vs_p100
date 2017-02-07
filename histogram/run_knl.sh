#!/bin/sh

export OMP_NUM_THREADS=34
export KMP_AFFINITY=granularity=fine,proclist=[0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66],explicit

for bin_size in 1000 10000 1000000 10000000
do
    ./hist_knl.out 67108864 $bin_size
done

export OMP_NUM_THREADS=68
export KMP_AFFINITY=granularity=fine,proclist=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67],explicit

for bin_size in 1000 10000 1000000 10000000
do
    ./hist_knl.out 67108864 $bin_size
done

export OMP_NUM_THREADS=272
export KMP_AFFINITY=compact

for bin_size in 1000 10000 1000000 10000000
do
    ./hist_knl.out 67108864 $bin_size
done
