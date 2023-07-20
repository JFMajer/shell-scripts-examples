#!/usr/bin/env bash

counter=1

(
counter=$((counter+1))
echo "counter inside subshell: $counter"
)

echo "counter outside subshell: $counter"