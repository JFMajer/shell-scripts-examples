#!/usr/bin/env bash

MIN_VAL=1
MAX_VAL=100

INT=50

if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if (( $INT >= $MIN_VAL && $INT <= $MAX_VAL )); then
        echo "$INT is within $MIN_VAL and $MAX_VAL"
    else
        echo "$INT is out of range of $MIN_VAL and $MAX_VAL"
    fi
else
    echo "INT $INT is not really an integer.">&2
fi
