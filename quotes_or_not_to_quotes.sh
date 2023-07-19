#!/usr/bin/env bash

name="Bob Kovalsky"

#iterate over name with quotes
for i in "${name}"; do
    echo $i
done

echo "-------------------"

#iterate over name without quotes
for i in ${name}; do
    echo $i
done
