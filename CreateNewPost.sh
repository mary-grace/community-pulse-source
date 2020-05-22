#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/47-Title-Of-Post-5.md'

mv 47-Title-Of-Post-5.md content/episode/
echo "Ready to Push? (y/n)"
read Answer
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "This Is My Latest Episode on Number 47"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh
