#!/usr/bin/env bash

FILE=~/.bashrc

if [ -e $FILE ]; then
    if [ -f $FILE ]; then
        echo "$FILE is a regular file."
    fi
    if [ -d $FILE ]; then
        echo "$FILE is a directory."
    else
        echo "$FILE is not a directory."
    fi
    if [ -r $FILE ]; then
        echo "$FILE is readable"
    fi
else
    echo "$FILE does not exist."
    exit 1
fi

exit
