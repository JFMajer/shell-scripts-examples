#!/bin/bash

readonly CONF_FILE="name.conf"

if [[ -f ${CONF_FILE} ]]; then
    source "${CONF_FILE}"
else
    name="Bob"
fi

echo "name is: "${name}""

exit 0
