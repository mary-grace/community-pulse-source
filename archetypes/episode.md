+++
Description = "A string in double quotes. Please make sure that any double quotes are escaped, as such: `\"Community\"`"
guests = ["A comma separated list of the guests, in the format first initial, last name (i.e., `"cjones", "jyee"`). The names will eventually line up to .yml files in `data/guests`"]
podcast = "This is the URL to the podcast MP3. You may not have this at the time you are creating an epiosde page, so that's okay."
podcast_duration = ""
aliases = ["Array of strings for redirects. The only one you should ever need is for the episode number, i.e., `aliases = ["/27"]`"]
episode = "A string for the episode number, i.e., `"42"`"
date = "year-month-day"
author = ""
categories = [""]
tags = [""]
friendly = "This is the short name of the episode. It should be the name of the file minus the .md extension."
title = "The title of the episode. It's a string inside double quotes."
images = ["Array of images for social sharing. You should be able to just take the default and replace the slug with the "friendly" for that episode."]
youtube = "The URL of the YouTube video, if there is one. If not, delete this line from the frontmatter of the episode."
explicit = "This is a "yes" or "no" (in quotes) value depending on if the episode has explicit language. If you are not sure, please set it to "yes"."
+++
