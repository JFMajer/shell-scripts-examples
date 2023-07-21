#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 arg" >&2
    exit 1
fi

echo "You provided one argument: $1"
exit 0