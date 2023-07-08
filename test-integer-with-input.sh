#!/usr/bin/env bash

echo -n "Please enter an integer -> "
read int

if [[ $int =~ ^-?[0-9]+$ ]]; then
    if [[ $int == 0 ]]; then
        echo "int $int is equal to zero."
    elif [[ $int < 0 ]]; then
        echo "int $int is negative."
    else
        echo "int $int is positive."
    fi
else
    echo "$int is not really an integer.">&2
    exit 1
fi

