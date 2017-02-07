#!/bin/sh

for bin_size in 1000 10000 1000000 10000000
do
    ./hist_pascal.out 67108864 $bin_size
done
