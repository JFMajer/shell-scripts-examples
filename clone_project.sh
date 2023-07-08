#!/usr/bin/env bash

project_dir="$(basename https://github.com/kodekloudhub/solar-system-9 .git)"
dir_name="/home/bob/git"
repo="https://github.com/kodekloudhub/solar-system-9.git"

clone_project() {
  cd ${dir_name}
  git clone ${repo}
}

clone_project
echo "Number of files: $(find ${project_dir} -type f | wc -l)"
