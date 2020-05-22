#!/usr/bin/env bash

# Tell user we are downloading the markdown file and then wget to obtain
echo "Downloading episode markdown"
wget
https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/New-Hugo-Automation-2020-05-22T11:54:16.273Z.md?sv=2018-03-28&sr=b&sig=rdNIHtJY7HiPDl6YsD86Vf039I36O4TVgdNmCJIPLBQ%3D&se=2020-05-23T11%3A54%3A42Z&sp=r
# Move to episodes folder
mv
https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/New-Hugo-Automation-2020-05-22T11:54:16.273Z.md?sv=2018-03-28&sr=b&sig=rdNIHtJY7HiPDl6YsD86Vf039I36O4TVgdNmCJIPLBQ%3D&se=2020-05-23T11%3A54%3A42Z&sp=r
episodes/https://jhandcdn.blob.core.windows.net/blob/hug_markdown_files/New-Hugo-Automation-2020-05-22T11:54:16.273Z.md?sv=2018-03-28&sr=b&sig=rdNIHtJY7HiPDl6YsD86Vf039I36O4TVgdNmCJIPLBQ%3D&se=2020-05-23T11%3A54%3A42Z&sp=r
# Git Steps
echo "Sync'ing with repo"
git add .
git commit -m "This is my new post"
git push origin master
echo "######################"
echo "This has completed"
echo "#######################"