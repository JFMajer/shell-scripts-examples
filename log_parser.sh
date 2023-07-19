#!/bin/bash

set -o pipefail

if [[ ! -f /etc/logs/error.log ]]; then
    echo "File not found!" 2> /home/bob/stderr.txt
    exit 1
fi

count=$(cat $logfile | grep -o "DB_CONN_FAILURE" | wc -l)

echo "DB_CONN_FAILURE: $count" > /home/bob/stdout.txt