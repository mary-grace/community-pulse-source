#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/47-Our-Next-Episode-8.md'

mv 47-Our-Next-Episode-8.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "47-Our-Next-Episode"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh