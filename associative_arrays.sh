#!/usr/bin/env bash

set -e

# check if bash version is 4+
if [[ "${BASH_VERSINFO[0]}" -lt 4 ]]; then
  echo "Bash version 4+ is required, bye!"
  exit 1
else
    echo "Bash version is ${BASH_VERSION}, you are good to go!"
fi

declare -A countries=(["UK"]="London" ["Germany"]="Berlin" ["France"]="Paris")
echo "Capital of England is ${countries["UK"]}"

echo "${countries[@]}" # print all values

for i in "${countries[@]}"; do
    echo $i
done

for k in "${!countries[@]}"; do
    echo 'Key is '"${k}"' and value is '"${countries[$k]}"''
done