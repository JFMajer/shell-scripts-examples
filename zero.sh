#!/usr/bin/env bash

echo "Special shell variable zero is: ${0}"

script_name=$(basename "${0}")

echo "Script name is: ${script_name}"

usage() {
bat <<USAGE
Usage: ${script_name} [-h|--help] [-v|--verbose] [-f|--file <file>] [-d|--debug <debug_level>] [-l|--log <log_file>]
Something else because HEREDOCS allow you to write multiline strings without escaping.
USAGE
}

usage

cwd=$(pwd)
full_path=$(readlink -f "${0}")
echo "Current working directory is: ${cwd}"
echo "Full path to this script is: ${full_path}"

exit 0