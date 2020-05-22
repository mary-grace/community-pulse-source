#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/67-Title-Of-Post-7.md'

mv 67-Title-Of-Post-7.md content/episode/
echo "New Markdown found at content/episode/67-Title-Of-Post-7.md. Does the
header look correct (y/n)"
read Answer
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "Where We Talk About Fun Stuff"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh