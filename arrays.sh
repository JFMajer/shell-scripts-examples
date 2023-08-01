#!/usr/bin/env bash

set -e

declare -a arr

arr[0]="Bob"
arr[1]="Alice"
arr[2]="John"

echo "${arr}" # prints Bob, this syntax returns the first element of the array

echo "----------------------------"

# iterate over all elements of the array, enclose in double quotes to avoid word splitting
for i in "${arr[@]}"; do
  echo "$i"
done

echo "----------------------------"

# alterante way to declare an array
arr2=("Michael" "Maria" "Eric")
for i in "${arr2[@]}"; do
  echo "$i"
done

echo "----------------------------"

# print all elements without a loop
echo "${arr2[@]}"

arr2[1]="Mary"
echo "${arr2[@]}" # what happened to Maria?
arr2[5]="Bob"
echo "${arr2[@]}" # what happened to the 3rd and 4th elements?

echo "Number of elements in an arr2 equals to ${#arr2[@]}"

# better way to append to an array
arr2+=("Maria")
echo "${arr2[@]}"
# and yet another way to append to an array
arr2[${#arr2[@]}]="Joseph"
echo "${arr2[@]}"
arr2[${#arr2[@]}]="John"
echo "${arr2[@]}"

# removing elements from an array
unset arr2[1]
echo "Array after removing the 2nd element"
echo "${arr2[@]}"

unset arr1 # remove the entire array
echo "Array after removing the entire array"

# sorting an array
arr3=(1 5 3 2 4)
echo "Array before sorting"
echo "${arr3[@]}"
sorted_arr3=($(for i in "${arr3[@]}"; do echo $i; done | sort))
echo "Array after sorting"
echo "${sorted_arr3[@]}"
