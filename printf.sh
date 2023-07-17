#!/bin/bash

name="John"
age=30

printf "Name: %s\n" "$name"
printf "Age: %d\n" "$age"
printf "Welcome, %s! You are %d years old.\n" "$name" "$age"


name2="Bob"
age=42
weight=100.5

printf "%s is %d years old and weighs %.1f kg\n" "$name2" "$age" "$weight"