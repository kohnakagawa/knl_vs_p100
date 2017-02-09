#!/bin/sh

val_size=67108864

for sd in 0 1000 500 100 10
do
    ./hist_pascal.out $val_size 1000 $sd
done
