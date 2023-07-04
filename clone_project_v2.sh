#!/bin/bash

project=${1}
branch=${2}

project_dir="$(basename ${project} .git)"

clone_project() {
  cd /home/bob/git/
  if ! [[ -d ${project_dir} ]]; then
    git clone ${project}
  fi
}

git_checkout() {
  cd "${project_dir}"
  git checkout "${branch}"
}

find_files() {
  find . -type f | wc -l
}

clone_project
git_checkout
find_files
