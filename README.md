This is the thing that builds the Community Pulse website. 

## Contributing

Here are the steps to follow to get going as a Community Pulse content contributor.

1. Install [Hugo](http://gohugo.io).
2. Clone this repo.
3. If you want to fire up a local copy to see your changes as you go, enter this command `hugo server -w --baseUrl="http://localhost:1313"`
4. You probably want to run this local copy in another terminal pane, as it needs to keep running. The -w watches for any changes and rebuilds on the fly.
5. If you want to make a new episode, type in `hugo new episode/my-episode-name.md` or duplicate the previous episode file, paying close attention to whether it's an After Pulse episode or a full episode.
5a. Use the following naming conventions for episode names: `ep#-episode-name` (e.g. `38-conference-season` or `38ap` for After Pulse episodes).

## Episodes

When you create a new episode, Hugo will populate the front-matter of the .md file with a bunch of stuff for you. These are the required items to be sure to populate:
* **Title** - The title and subtitle of the episode. If it's an After Pulse episode, the title will be "After Pulse: _Episode Name_". This is a string inside double quotes.
* **Description** - A string in double quotes. Please make sure that any double quotes are escaped, as such: `\"Community\"`
* **Date** - Today's date -- aka the date that you're working on the podcast episode -- in yyyy-mm-dd format
* **PublishDate** - The date you'd like to publish the podcast episode in yyyy-mm-dd format
* **podcast_file** - The Direct Download URL to the podcast MP3. You'll find this in Libsyn after you've uploaded the mp3 file by clicking on the Link/Embed emoji. 
* **episode_image** - The location of the square image for this episode, which lives within the img folder (e.g. `"img/episode/37-whats-in-name.jpg"`). This line is currently commented out using `#` until we have enough images to display the home page in a grid format. These images will change for each main episode but will be identical for After Pulse episodes (`"img/episode/after-pulse.jpg`). This square image has the name of the episode and the guests featured in it overlaid on top of the image. Please only use Creative Commons Licensed images from websites such as [Unsplash](https://unsplash.com/) or images that one of the hosts own. 
* **episode-banner** - The location of the banner image (e.g. `"img/episode/37-whats-in-name-banner.jpg"`). This is typically a 16x9 format image cropped from the square image above, but could be another related image. These images will change for each main episode but will be identical for After Pulse episodes (`"img/episode/after-pulse-banner.jpg`). Please only use Creative Commons Licensed images from websites such as [Unsplash](https://unsplash.com/) or images that one of the hosts own.
* **episode** - a string for the episode number, i.e., `"42"` or `"42ap"`
* **guests** - A comma separated list of the guests, in the format first initial, last name (e.g., `["cjones", "jyee"]`). The names should line up to .md files in `content/guests`
* **hosts** - The hosts that were present for the episode. This follows the same comma separated list format as the guests (e.g. `["mthengvall", "pjhagerty", "jhand"]`
* **sponsors** - Any relevant sponsors in a comma separated list (e.g. `["ibmdeveloper",]`)
* **aliases** - Array of strings for redirects. The only one you should ever need is for the episode number, i.e., `["/37"]` or `["/37ap"]`
* **youtube** - the URL of the YouTube video, if there is one. If not, delete this line from the frontmatter of the episode.
* **explicit** - this is a "yes" or "no" (in quotes) value depending on if the episode has explicit language. If you are not sure, please set it to "yes".

## Guests

**Guest image(s)** - These need to be JPG files, minimum 500px x 500px, and named after the guest data file name (i.e., `mthengvall.jpg`). They are stored in the `static/img/guests` folder.

**Guest bios** - You'll notice that the layout for each single episode (themes > community-pulse > layouts > episode > single.html) has a string of {{ if }} clauses toward the bottom of the page. This allows for guests to have various links to social media & websites if they wish. These can include Facebook, Twitter, Github, LinkedIn, and their personal website. These links, along with their bio, are pulled from their guest file (data > guests > `pjhagerty.yml`).

## Show Notes

When writing show notes, here are a few things to consider:

### Avoid using plain-text URL's
Just pasting in a URL is much worse for us SEO-wise, and it's also less delightful for the reader. For example, `[Jessica’s awesome talk about mindfulness](http://www.thing.com/stuff)` is better than `http://www.thing.com/stuff`

### Embedding tweets
If you are referencing a tweet, please use the built-in shortcode to create a pretty embed for the tweet. You can do this by using the code `{{< tweet 666616452582129664 >}}` where the number is the ID of the tweet (which is the end of the tweeet's URL, for example, `https://twitter.com/spf13/status/666616452582129664`.

The exception to this rule is if you suspect that the tweet might be deleted due to controversy; at that point you might consider a screenshot of the tweet.

## Contributing Code

Until you get your legs under you with the code (you'll need things like a LESS compiler, etc), I highly recommend just sticking with the content items. However, if you want to fix/enhance any of the Hugo code or CSS/Bootstrap stuff, please fork the repo and submit a PR for evaluation.


### Credits

Thanks to [Matty Stratton](https://twitter.com/mattstratton) for creating & maintaining the [Castanet theme](https://github.com/mattstratton/castanet).
