#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/64-I-Broke-It-6.md'

mv 64-I-Broke-It-6.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "64-I-Broke-It"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh