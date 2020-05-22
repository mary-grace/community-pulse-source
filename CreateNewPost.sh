#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/47-This-Is-Episode-Forty-Seven-7.md'

mv 47-This-Is-Episode-Forty-Seven-7.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "47-This-Is-Episode-Forty-Seven"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh