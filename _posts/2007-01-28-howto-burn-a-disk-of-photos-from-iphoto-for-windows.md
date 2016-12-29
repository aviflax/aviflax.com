---
id: 403
title: 'Howto: Burn a disk of photos from iPhoto, for Windows'
date: 2007-01-28T16:10:41+00:00
author: Avi
layout: post
guid: http://aviflax.com/post/howto-burn-a-disk-of-photos-from-iphoto-for-windows/
permalink: /post/howto-burn-a-disk-of-photos-from-iphoto-for-windows/
categories:
  - none
---
Apple already has [a support doc](http://docs.info.apple.com/article.html?artnum=93277) explaining how to do this. They got it basically correct: you copy the files to a folder, then burn the files from that folder. The problem: you&#8217;re copying a bunch of files from one place to another one the same drive, which takes a long time and uses up disk space &#8211; which you may not even have free. I just needed to burn 1,080 photos to a DVD, total size about 3GB.

Thankfully, there&#8217;s a good solution for power users:

  1. In iPhoto: 
      1. Select the photos you want to burn. (I recommend using an album, but that&#8217;s your call.)
      2. Choose Share->Desktop
  2. Close the System Preferences app when it pops up
  3. In Finder: 
      1. Right-click in a folder or the desktop, and choose &#8220;New Burn Folder&#8221;.
      2. Open a Finder window and navigate to: 
        <pre>/Users/username/Pictures/iPhoto Library/iPhoto Selection</pre>
    
      3. Select all the items in the folder, and drag them onto the Burn Folder.
      4. Open your Burn Folder and start the burn normally.

There! You&#8217;ve burned your photos to a disk the way it should always work, using aliases &#8211; no needlessly duplicating files on your hard disk!