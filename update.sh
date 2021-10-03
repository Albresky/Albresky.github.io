#!/bin/bash

git pull

echo "Deploy the master-branch"

echo "删除public"
rm -rf public

echo "hugo重构"
hugo

#重命名.gitignore
echo "重命名.gitignore"
mv .gitignore .gitignore.bak

git add .

echo "部署master分支"
git commit -m "update master-branch at `date`"
git push -f origin master

#恢复命名.gitignore
echo "恢复命名.gitignore"
mv .gitignore.bak .gitignore