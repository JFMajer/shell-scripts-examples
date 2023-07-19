#!/bin/bash

# example of variable expansion with default value

echo ${var:-word} # will print word

var=hello
echo ${var:-word} # will print hello
