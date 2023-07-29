#!/usr/bin/env bash

name="Bob" # this is a string
age=14 # this is an integer

num="15" # it looks like a string, and i think it is
echo $((num + 5)) # but can be treated as an integer

echo $((name + 5)) # prints 5 for some reason

declare -i num2=15 # this is an integer

echo $((num2 + 50)) # prints 20
num2="Bob"
echo "${num2}" # print 0 because it's an integer

declare -u uppername
uppername="Bob"
echo "${uppername}" # prints BOB

declare -l lowername
lowername="Bob"
echo "${lowername}" # prints bob