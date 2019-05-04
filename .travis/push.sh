#!/bin/sh

setup_git() {
  git config --global user.email "aggarwalpiush@travis-ci.org"
  git config --global user.name "aggarwalpiush"
}

commit_website_files() {
  git checkout -b gh-pages
  git add . *.png
  git commit --message "Travis build: 1"
}

#upload_files() {
 # git remote add origin-pages https://${GH_TOKEN}@github.com/MVSE-outreach/resources.git > /dev/null 2>&1
  #git push --quiet --set-upstream origin-pages gh-pages 
#}

setup_git
commit_website_files
#upload_files