#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
wget
https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/This-Should-Rename-The-Script-2020-05-22T12:36:28.15Z.md?sv=2018-03-28&sr=b&sig=%2F1IvpSg23%2B%2BtNkf%2FfEZoMwZNfdFj0W3A4I6xFSTfN5s%3D&se=2020-05-23T12%3A36%3A38Z&sp=r
-P /content/episode/
# Git Steps
echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"