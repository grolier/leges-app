#!/bin/bash
git@github.com:grolier/leges-app=$(git config --get remote.origin.url)

mkdir .deploy
cp -R ./* .deploy
cd .deploy
git init .
git remote add github $github@github.com:grolier/leges-app.git
git checkout -b gh-pages
git add .
git commit -am "Static site deploy"
git push github gh-pages --force
cd ..
rm -rf .deploy