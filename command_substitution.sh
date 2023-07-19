#!/usr/bin/env bash

file_count=$(find . -maxdepth 1 -iname "*.sh" -type f | wc -l)

echo "There are $file_count bash scripts in this directory"