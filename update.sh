#!/bin/bash

echo -e "\033[0;32mDeploying updates to gh-pages...\033[0m"

# 部署到 github pages 脚本
# 错误时终止脚本
set -e

# 删除打包文件夹
rm -rf public

# 打包。even 是主题
hugo  # if using a theme, replace with `hugo -t <YOURTHEME>`

# 进入打包文件夹
cd public

# Add changes to git.
git init
git add .

# Commit changes.
msg="building site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# 推送到github  
git push git@github.com:Albresky/Albresky.github.io.git master
git subtree push --prefix public origin gh-pages
# 回到原文件夹
cd ..
