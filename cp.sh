#!/bin/bash
for i in {80,8001,8002,17666,17667,18666,18667}; do
    for j in {5,4,3,2,1}; do
        cp $i.$j.txt $i.$[$j+1].txt
    done
    cp $i.txt $i.1.txt
done