#!/bin/sh

if [[ $(git status -s) ]]
then
    echo -e "\n The working directory is dirty. Please commit any pending changes. \n"
    exit 1;
fi

echo -e "\n Deleting old publication \n"
rm -rf public
mkdir public
rm -rf .git/worktrees/public/

echo -e "\n Checking out gh-pages branch into public \n"
git worktree add -B gh-pages public origin/gh-pages

echo -e "\n Removing existing files \n"
rm -rf public/*

echo -e "\n Generating site \n"
hugo

echo -e "\n 更新master分支 \n"
git add . && git commit -m "Publish master-branch（`date`）"

echo -e "\n 部署master到远程分支 \n"
git push origin master

echo -e "\n Updating gh-pages branch \n"
cd public && git add --all && git commit -m "Publish to gh-pages (`date`)"

echo -e "\n 部署public到与远程分支gh-pages \n"
git push origin gh-pages

