#!/bin/bash

git pull

#重构master-branch
echo -e "\n 重构master-branch \n" 


#删除public
echo -e "\n 删除public \n" 
rm -rf public

#hugo重构
echo -e "\n hugo重构 \n" 
hugo

#备份.gitignore -> .gitignore.bak
#echo -e "\n 备份.gitignore -> .gitignore.bak \n"
#mv .gitignore .gitignore.bak

git add .

echo -e "\n 部署master分支 \n"
git commit -m "update master-branch `date`"
git push -f origin master

#部署gh-pages分支
echo -e "\n 部署gh-pages分支 \n"
git add public && git commit -m "update 'gh-pages' `date`"
git subtree push --prefix public origin gh-pages

#恢复命名.gitignore
#echo -e "\n 恢复.gitignore.bak -> .gitignore \n"
#mv .gitignore.bak .gitignore

read -n 1 -p "Press any key to continue..."
