#!/usr/bin/env bash

wget 'https://jhandcdn.blob.core.windows.net/blob/hugo/48-It-Is-Now-9-20-am-8.md'

mv 48-It-Is-Now-9-20-am-8.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "48-It-Is-Now-9-20-am"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"
echo "Removing script"
rm CreateNewPost.sh