#!/bin/sh

setup_git() {
  git config --global user.email "aggarwalpiush@travis-ci.org"
  echo §?
  git config --global user.name "aggarwalpiush"
  echo §?
}

commit_website_files() {
  git checkout -b gh-pages
  echo §?
  git add . *.png
  echo §?
  git commit --message "Travis build: 1"
  echo §?
}

upload_files() {
  git remote add origin-pages https://"${GITHUB_TOKEN}"@github.com/aggarwalpiush/optimization-benchmark.git > /dev/null 2>&1
  echo §?
  git push --quiet --set-upstream origin-pages gh-pages 
  echo §?
}

setup_git
commit_website_files
upload_files