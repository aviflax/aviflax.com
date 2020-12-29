---
author: Avi
categories:
- none
date: "2008-09-15T10:08:26Z"
guid: http://aviflax.com/?p=464
id: 464
tags:
- digital
- iTunes
- Music
- open
- open source
- oss
- Software
- source
- tool
- tools
title: My Preferred Approach to Music Downloads
url: /post/my-preferred-approach-to-music-downloads/
---
  1. I interact directly with the act via their own website.
  2. I download (middling-quality) MP3 tracks for free and listen to the music for a few days or weeks.
  3. If I like the music enough to want to have it in my library, I go to the act&#8217;s website to buy it. If not, I delete the MP3 tracks.
  4. I specify the price I&#8217;m willing to pay.
  5. I download a zip file containing 320 KBps [FLAC](http://flac.sourceforge.net/) tracks and JPEG art files.
  6. I use [Max](http://sbooth.org/Max/) to convert the FLAC tracks to [Apple Lossless](http://en.wikipedia.org/wiki/Apple_Lossless) tracks.
  7. I import the tracks into my iTunes library, add the art, and enter the metadata for each track.

<s>Seeing as Max is Open Source, I see an opportunity here for some software to automate all this. Imagine dragging that downloaded zip file onto &#8220;MaxiTunes&#8221;, having it pop up a simple interface for entering metadata, and then it takes care of converting the tracks, adding the metadata, importing them into iTunes, and moving the original files to the trash. I&#8217;d be willing to contribute funds to a developer willing to give this a try.</s>

**Update:** It turns out that I underestimated Max. Apparently if a FLAC file contains metadata, it&#8217;ll be preserved during the conversion. And if not, Max has built-in metadata editing. It can also automatically add converted tracks to iTunes, and even to a specific playlist. Impressive! I like Max a lot &#8211; it&#8217;s fast, effective, reliable, free, and Free. My only real quibble would be that the UI is a little confusing. Just a little though.