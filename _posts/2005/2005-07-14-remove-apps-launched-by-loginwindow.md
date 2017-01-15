---
id: 252
title: Remove apps launched by loginwindow
date: 2005-07-14T19:07:13+00:00
author: Avi
layout: post
guid: http://flaxfamily.com/post/remove-apps-launched-by-loginwindow/
permalink: /post/remove-apps-launched-by-loginwindow/
keywords:
  - apple,os x,software,development
categories:
  - none
---
From reading [Tim&#8217;s Bandwagon: How to permanently remove &#8216;HP Director&#8217; from the Dock](http://www.twisty.com/bandwagon/archives/2004/04/10/122200) I discovered one of the places from which OS X launches apps:

<pre>/Library/Preferences/loginwindow.plist</pre>

I was looking for this for a while, and I&#8217;m glad I know about it now, but I&#8217;m a bit annoyed about it&#8230; there really shouldn&#8217;t be more than one or two ways that startup items are launched, and the &#8220;Startup Items&#8221; tab of the Accounts preference pane, and the &#8220;Services&#8221; tab of the Sharing preference pane, are really enough places. I don&#8217;t think any app should be able to add any startup item anywhere else. If it does, it can be very difficult for someont to track it down and remove it &#8211; and software vendors (such as HP in this case) could start abusing it, leading to the kind of crap that Windows users have to put up with. Contrary to a somewhat popular belief, OS X isn&#8217;t really inherently better on this particular count (limiting startup crap) &#8211; it&#8217;s been mostly due to Mac software vendors respecting their users and not messing with their system too much.

How can we help? Developers should resist the temptation to distribute software with an installer, and if you must have an installer, try to have it run without asking for the administrator password &#8211; that way it can&#8217;t alter sensitive files such as these. Users&#8230; well, I guess users can bitch about it when they have to run an installer to install. Drag and drop installation: it&#8217;s the only way to go.