#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/63-Jason-On-Automation-3.md'

mv 63-Jason-On-Automation-3.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh