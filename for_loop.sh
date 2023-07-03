#!/bin/bash

echo "traditional for loop"

for i in {1..5}; do
    echo "current iteration is ${i}"
done

echo "for loop using seq"

for i in $(seq 7 12); do
    echo "current iteration is ${i}"
done
