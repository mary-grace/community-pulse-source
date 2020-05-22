#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
echo "#####"
wget "https://jhandcdn.blob.core.windows.net/blob/hugo/55-Best-The-Year-of-Automation-5.md"
echo "#####"
mv 55-Best-The-Year-of-Automation-5.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
#git add .
#git commit -m "This is my new post"
#git push origin master
echo "######################"
echo "This has completed"
echo "#######################"