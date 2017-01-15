---
id: 455
title: 'OS X Tip: Don&#8217;t Deny Incoming Connections to configd'
date: 2008-08-04T07:44:26+00:00
author: Avi
layout: post
guid: http://aviflax.com/?p=455
permalink: /post/os-x-tip-dont-deny-incoming-connections-to-configd/
categories:
  - none
tags:
  - computer
  - hint
  - mac
  - os x
  - osx
  - Tech
  - tip
  - troubleshooting
---
Last night, we picked up Elina&#8217;s computer home from the Apple store; they replaced a faulty motherboard. As part of the pick-up process, the Apple service representative boots up the computer and demonstrates that it works fine; and it did. When we brought it home, though, we had a perplexing problem: the network connection seemed to work fine at first, but after the first time Elina put the computer to sleep, and then woke it up, it couldn&#8217;t obtain an IP address.
  
<!--more-->


  
I was really stumped &#8211; it just seemed as though DHCP just wouldn&#8217;t work, no matter what. I could successfully connect the wifi to a few different networks, and a direct ethernet connection worked as well. And if I manually entered an IP address and the other pertinent TCP/IP settings, the connections worked just fine. But no matter what I did, OS X couldn&#8217;t get an IP address from our router (an Apple Airport Extreme Base Station); the connection status in Network Preferences just kept saying that it had a self-assigned IP address.

I tried _a lot_ of things: upgrading the firmware, rebooting in safe mode, creating a new network location, deactivating and reactivating the connections — nothing worked. In the end, I found the answer with a combination of Google and sheer luck. As I was troubleshooting, all along I was searching with Google for some clue to what was going on — using phrases like &#8220;OS X DHCP won&#8217;t work&#8221;, &#8220;Mac can&#8217;t get IP address&#8221;, etc. Google usefully displays snippets of text from each search result below the result title. Luckily, in one of those, I noticed the name &#8220;configd&#8221;. That tickled my memory, so I searched for &#8220;configd&#8221;. [The man page](http://developer.apple.com/documentation/Darwin/Reference/ManPages/man8/configd.8.html) starts with &#8220;The configd daemon is responsible for many configuration aspects of the local system.&#8221; And after skimming [this page](http://www.afp548.com/article.php?story=20041015131913324), I developed a theory that configd was responsible for obtaining an IP address via DHCP. And I suddenly remembered that when we had first booted up the laptop when we brought it home, I had changed [the Firewall mode](http://support.apple.com/kb/HT1810) to _Set access for specific services and applications_ &#8211; and that it had immediately popped up a dialog asking whether we wanted to allow or deny incoming connections to configd! I surmised that we must have clicked &#8220;deny&#8221;, which must have broken configd.

The hypothesis was easy to test: I just turned the firewall off (the setting labeled _Allow all incoming connections_) and tried to obtain an IP address, and it worked. Problem solved! As usual, there was a reason — me!

So the moral of the story is: don&#8217;t deny incoming connections to configd.

A useful tip, found [here](http://forums.macrumors.com/showthread.php?t=406592#11): to reset the OS X 10.5 Leopard firewall back to factory settings, enter the following command in the Terminal: `sudo cp /usr/libexec/ApplicationFirewall/com.apple.alf.plist /Library/Preferences/com.apple.alf.plist`

Finally, I just want to say: the Leopard firewall confuses me. I have issues with it. Maybe it&#8217;s just me. But maybe it isn&#8217;t.