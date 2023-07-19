#!/usr/bin/env bash

greetings="Hello World"
echo "${greetings#H}" # will print ello World

echo "${greetings#e}" # will print Hello World, e doesn't match the prefix

echo "${greetings#Hey}" # will print Hello World, Hey doesn't match the prefix

echo "${greetings%d}" # will print Hello Worl,

echo "${greetings%ld}" # will print Hello Wor

echo "${greetings%o}" # will print Hello World, o doesn't match the suffix

echo "${greetings%world}" # will print Hello World, world doesn't match the suffix as it's case sensitive

string1="Some string"
string2="another string"
string3="Yet another string"

# #* removes everything until it finds the space

echo "${string1#* }" # will print string
echo "${string2#* }" # will print string
echo "${string3#* }" # will print another string 

echo "${string1% *}" # will print Some"

file_path="/home/user/some_file.txt"
echo "${file_path##*/}" # will print some_file.txt