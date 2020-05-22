#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
wget https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/50-The-Year-of-Automation-6.md
# Git Steps
# Move file to episodes directory
mv 50-The-Year-of-Automation-6.md content/episode/
#echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"