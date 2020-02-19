#!/usr/bin/env sh

set -e

npm run docs:build

cd docs/.vuepress/dist

echo 'kursdotnetcore.pl' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:kursdotnet/kursdotnet.github.io.git master

cd -