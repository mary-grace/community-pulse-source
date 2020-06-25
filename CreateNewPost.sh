#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/100-Title-Of-Post-3.md'

mv 100-Title-Of-Post-3.md content/episode/
echo "New Markdown found at content/episode/100-Title-Of-Post-3.md. Does the
header look correct (y/n)"
read Answer
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "Jason's follow up"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh