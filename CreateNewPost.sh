#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/49-Title-Of-Post-9.md'

mv 49-Title-Of-Post-9.md content/episode/
echo "Ready to Push? (y/n)"
read Answer
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "That Was a Great Episode 49"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh