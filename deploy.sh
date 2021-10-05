#!/bin/bash

echo -e "\033[0;32mDeploying updates to branch-master...\033[0m"

#删除之前版本的public文件夹
rm -rf public

#重建网站
hugo

git init
git add .

git add public && git commit -m "update 'public'"
git subtree push --prefix public origin gh-pages

#重命名.gitignore
mv .gitignore .gitignore.bak

git push git@github.com:Albresky/Albresky.github.io.git master

#恢复命名.gitignore
mv .gitignore.bak .gitignore

