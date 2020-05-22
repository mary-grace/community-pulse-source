#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
wget
https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/Community-Pulse-Has-New-Automation-2020-05-22T12:12:01.017Z.md
-P /content/episodes/
# Git Steps
echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
rm Community-Pulse-Has-New-Automation-2020-05-22T12:12:01.017Z.sh