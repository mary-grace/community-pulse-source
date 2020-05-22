#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/48-Title-Of-Post-9.md'

mv 48-Title-Of-Post-9.md content/episode/
echo "Ready to Push? (y/n)"
read Answer
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "Skipping 47 and Recording 48"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh