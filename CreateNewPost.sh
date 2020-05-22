#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
wget
https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/50-The-Year-of-Automation-2020-05-22T12:40:36.047Z.md?sv=2018-03-28&sr=b&sig=XB9Fn10NKGO0Myuksrnl8B8%2Ff6Hk0CKz9MBf8MYrPhI%3D&se=2020-05-23T12%3A40%3A57Z&sp=r
-P /content/episode/
# Git Steps
echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"