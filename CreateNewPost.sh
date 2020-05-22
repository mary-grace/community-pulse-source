#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
echo "#####"
wget
"https://jhandcdn.blob.core.windows.net/blob/hugo/This-Might-Be-Best-Episode-6.md"
echo "#####"
mv This-Might-Be-Best-Episode-6.md content/episode/
# Git Steps
#echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"