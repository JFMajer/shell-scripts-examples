#!/usr/bin/env bash

IFS=":" # Internal Field Separator, default is space, tab, newline
echo "IFS: $IFS"

# default is IFS=$' \t\n'

elements="ele1:ele2:ele3"

for ele in ${elements}; do
    echo ${ele}
done

exit 0;