#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s extglob

bundle exec jekyll build
git checkout gh-pages
rm -r !(_site|.git|.gitignore|.sass-cache)
mv _site/* .
rmdir _site
git add --all
git commit
git checkout master