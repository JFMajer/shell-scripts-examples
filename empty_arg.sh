#!/bin/bash

if [[ -z ${1} ]]; then
    echo "no argument provided"
    exit 1
fi

echo "provided argument is ${1}"
