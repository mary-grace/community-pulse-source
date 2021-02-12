# Community Pulse

## Steps to contribute

Now hosted on Azure

---

This is the thing that builds the Community Pulse website. :tada: 

# Contributing

Here are the steps to follow to get going as a Community Pulse content contributor.

1. Install [Hugo](http://gohugo.io).
2. Clone this repo.
2a. If you already have a local copy on your machine, make sure you have the most up-to-date version by using this command: `git pull origin master`.
3. Create a new branch to track your changes: `git checkout -b <branch title>`
4. If you want to fire up a local copy to see your changes as you go, enter this command `hugo server -w --baseUrl="http://localhost:1313"` You'll want to run this local copy in another terminal pane, as it needs to keep running. The -w watches for any changes and rebuilds on the fly.
5. Once you've made your changes or created your new content (see **Creating New Content** below), use `git add` to specify which changes you want to commit. You can either add these files one at a time by listing out the file name (e.g. `git add content/episode/38ap`) or commit them in groups (e.g. `git add content/`). _To see which files have been edited or added, enter the command `git status`._
6. Now commit your changes to your local branch by entering the command `git commit -m "commit message here"`. Be specific with your commit message (e.g. "Episode 39 page, images, and guest information") so that the other hosts know what you changed.
7. Once you're happy with your changes (remember to check them at http://localhost:1313) push them to the Github repo: `git push origin <branch title>`.
8. NOTE: This step is no longer correct. Updates coming soon.
Navigate back here to see the changes you've pushed and [create a pull request](https://help.github.com/en/articles/creating-a-pull-request). Netlify will take over from here, running through a series of tests to make sure everything is ready to publish. Once those are  complete (and all green) you'll be able to merge the pull request and delete the branch.
9. Lastly, you'll want to navigate back to your terminal window, change to the master branch (`git checkout master`) and pull down the changes you just made so that your local version matches the Github version.

# Creating New Content
## Episodes

If you want to create a new episode, type in `hugo new episode/my-episode-name.md` or duplicate the previous episode file, paying close attention to whether it's an After Pulse episode or a full episode. Use the following naming conventions for episode names: `ep#-episode-name` (e.g. `38-conference-season` or `38ap` for After Pulse episodes).

When you create a new episode, Hugo will populate the front-matter of the .md file with a bunch of stuff for you. These are the required items to be sure to populate:
* **Title** - The title and subtitle of the episode. If it's an After Pulse episode, the title will be "After Pulse: _Episode Name_". This is a string inside double quotes.
* **Description** - A string in double quotes. Please make sure that any double quotes are escaped, as such: `\"Community\"`
* **Date** - The date you'd like to publish the podcast episode in yyyy-mm-dd format
* **podcast_file** - The Direct Download URL to the podcast MP3. You'll find this in Libsyn after you've uploaded the mp3 file by clicking on the Link/Embed emoji. (_If you haven't already uploaded the MP3 file to Libsyn, see the_ [Libsyn Instructions](https://docs.google.com/document/d/1AvGLSm3pUCBbdumZz0dGvdUlyfdS_CTOj1KGSVJZGmg/edit?usp=sharing) _Google Doc for instructions on how to do that piece._) Make sure this is a `https` URL. If it's not, Netlify will flag it as "mixed media" and the tests won't pass when it's time to merge the new branch.
* **episode_image** - The location of the square image for this episode, which lives within the img folder (e.g. `"img/episode/37-whats-in-name.jpg"`). This line is currently commented out using `#` until we have enough images to display the home page in a grid format. These images will change for each main episode but will be identical for After Pulse episodes (`"img/episode/after-pulse.jpg`). This square image has the name of the episode and the guests featured in it overlaid on top of the image. Please only use Creative Commons Licensed images from websites such as [Unsplash](https://unsplash.com/) or images that one of the hosts own. 
* **episode-banner** - The location of the banner image (e.g. `"img/episode/37-whats-in-name-banner.jpg"`). This is typically a 16x9 format image cropped from the square image above, but could be another related image. These images will change for each main episode but will be identical for After Pulse episodes (`"img/episode/after-pulse-banner.jpg`). Please only use Creative Commons Licensed images from websites such as [Unsplash](https://unsplash.com/) or images that one of the hosts own.
* **episode** - a string for the episode number, i.e., `"42"` or `"42ap"`
* **guests** - A comma separated list of the guests, in the format first initial, last name (e.g., `["cjones", "jyee"]`). The names should line up to .md files in `content/guests`
* **hosts** - The hosts that were present for the episode. This follows the same comma separated list format as the guests (e.g. `["mthengvall", "pjhagerty", "jhand"]`
* **sponsors** - Any relevant sponsors in a comma separated list (e.g. `["ibmdeveloper",]`)
* **aliases** - Array of strings for redirects. The only one you should ever need is for the episode number, i.e., `["/37"]` or `["/37ap"]`
* **youtube** - the URL of the YouTube video, if there is one. If not, delete this line from the frontmatter of the episode.
* **explicit** - this is a "yes" or "no" (in quotes) value depending on if the episode has explicit language. If you are not sure, please set it to "yes".

## Show Notes

The show notes are added on the line after `+++` in the episode markdown file. Please include any links that were referenced in the episode in addition to any Check Outs. It's up to you if you'd like to include quotes from the show or any additional information. We always include a standard footer: 

```
### Enjoy the podcast?
Please take a few moments to leave us a review on [iTunes](https://itunes.apple.com/us/podcast/community-pulse/id1218368182?mt=2) and follow us on [Spotify](https://open.spotify.com/show/3I7g5WfMSgpWu38zZMjet?si=565TMb81SaWwrJYbAIeOxQ), or leave a review on one of the other many podcasting sites that we're on! Your support means a lot to us and helps us continue to produce episodes every month. Like all things Community, this too takes a village.
```

When writing show notes, here are a few things to consider:

### Avoid using plain-text URL's
Just pasting in a URL is much worse for us SEO-wise, and it's also less delightful for the reader. For example, `[Jessica’s awesome talk about mindfulness](http://www.thing.com/stuff)` is better than `http://www.thing.com/stuff`

### Embedding tweets
If you are referencing a tweet, please use the built-in shortcode to create a pretty embed for the tweet. You can do this by using the code `{{< tweet 666616452582129664 >}}` where the number is the ID of the tweet (which is the end of the tweeet's URL, for example, `https://twitter.com/spf13/status/666616452582129664`.

The exception to this rule is if you suspect that the tweet might be deleted due to controversy; at that point you might consider a screenshot of the tweet.


## Guests

**Guest image(s)** - These need to be JPG files, minimum 500x500px, and named after the guest data file name (i.e., `bdouglas.jpg`). They are stored in the `static/img/guests` folder.

**Guest bios** - Each guest has their own bio page (e.g. [Nathen Harvey](http://communitypulse.io/guest/nharvey/)) stored in the `content/guest/` folder. This page contains their bio, their photo, any links to social media sites & personal websites that they chose to include, as well as the episodes that they've been a guest on. To create a new guest page, simply duplicate an already-existant profile and fill in the following fields:

* **Title** - The full name of the guest.
* **Thumbnail** - The image for the guest. As stated above, this must be a jpg file, minimum 500x500px, named as `firstinitiallastname.jpg` (e.g. `mstratton.jpg`).
* **Type** - This will always read `"guest"` for a guest profile. This same type will be labeled `"host"` for the host profiles.
* **Website** - Guest's website, should they choose to include it. Be sure to include http(s) at the beginning.
* **Facebook** - Guest's Facebook Username. Do not use the full URL.
* **Twitter** - Guest's Twitter handle, without the @.
* **LinkedIn** - LinkedIn profile name (the part the comes after `https://www.linkedin.com/in"` in the profile URL.
* **Pinterest** - Pinterest profile name.
* **Instagram** - Instagram profile name.
* **YouTube** - YouTube profile or channel name.

## Hosts
Hosts have a very similar setup to guests, with the exception of the `Type` field. These files live in `content/host`.

## More Details
For more information about each of these fields, read [Matty Stratton's great reference doc](https://github.com/mattstratton/castanet/blob/master/REFERENCE.md). 

# Credits

Thanks to [Matty Stratton](https://twitter.com/mattstratton) for creating & maintaining the [Castanet theme](https://github.com/mattstratton/castanet).
