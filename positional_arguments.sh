#!/usr/bin/env bash

# $# - num of positional arguments
# "$*" - all positional arguments (as a string)

echo "\$@ is $@"

if [[ "$#" -eq 0  ]]; then
  echo "Please provide at least one argument to test this script"
  exit 0
fi


echo "\$* is $*"
echo "\$# is $#"

echo "Listing arguments..."

for i in "$@" 
do
  echo "$i"
done
