#!/bin/bash
echo -e "\n\n###			hugo... 		###\n\n"
hugo

echo -e "\n\n###		update to Tencent Server...	###\n\n"
cd public
git add . && git status 

read -p "\n\n			Commit Message:		###\n\n" CMT

echo -e "\n\n"

git commit -m "$CMT"

echo -e "\n\n###			pushing...		###\n\n"

git push -u origin master
