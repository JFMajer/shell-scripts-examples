#!/usr/bin/env bash

readonly ERROR_CONF_FILE=150

terminate() {
    local msg="${1}"
    local code="${2:-160}" # default exit code 160
    echo "Error: ${msg}" >&2
    exit "${code}"
}

if [[ ! -s "${conf_file}" ]]; then
    terminate "Configuration file does not exist or is empty" "${ERROR_CONF_FILE}"
fi

exit 0