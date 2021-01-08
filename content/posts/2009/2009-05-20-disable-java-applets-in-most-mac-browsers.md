---
author: Avi
categories:
- none
date: "2009-05-20T08:30:21Z"
guid: http://aviflax.com/?p=509
id: 509
tags:
- java
- mac
- os
- osx
- security
- Tech
- x
title: Disable Java Applets in Most Mac Browsers
url: /post/disable-java-applets-in-most-mac-browsers/
---
Just about every single Mac in use today has [a major security bug](http://landonf.bikemonkey.org/code/macosx/CVE-2008-5353.20090519.html) which means that any website you visit could delete files from your computer, steal your address book, or install viruses or malware. If you&#8217;d like to protect your computer — and you should — read on.

According to the post [Critical Mac OS X Java Vulnerabilities](http://landonf.bikemonkey.org/code/macosx/CVE-2008-5353.20090519.html) by [Landon Fuller](http://landonf.bikemonkey.org/), via [Simon Willison](http://simonwillison.net/2009/May/19/critical/), there&#8217;s a critical vulnerability in every Java installation which Apple includes in OS X, which can allow an attacker to easily run any arbitrary command on your system by simply loading a Java applet in a web page you visit.

(For our purposes, Java is a web browser plugin which, similar to Flash, lets your browser do advanced things like upload photos, etc.)

Therefore it&#8217;s recommended to disable Java in all of your web browsers until this is fixed.

The easy way to do this is to open the preferences of your browsers and find the checkbox labeled &#8220;Enable Java&#8221; and uncheck it.

However, I wasn&#8217;t comfortable merely doing that, and I don&#8217;t think anyone else should be, either. Not only do you have to remember to do this in _every single browser_ you might ever use — including [Fluid](http://fluidapp.com/) based browsers, browsers embedded in RSS readers, etc — but it&#8217;s always possible for the preference to get reset somehow. And some apps which use embedded browsers may not make that preference available at all.

Instead, I recommend moving the Java plugin from its usual location, which will prevent all Webkit-based browsers, including those embedded in other apps, [Firefox](http://www.mozilla.com/firefox/), and [Camino](http://caminobrowser.org/), from loading any Java applet, even if the preference isn&#8217;t available in one of those apps, or gets reset.

These two terminal commands will accomplish this:

(Please note: I have tested this solution only using a fully updated 64-bit Intel Mac as of today, using Safari 4 Beta, Camino 2 Beta, Firefox 3.5 Beta, and Fluid 0.9.6. I make no warranties or guarantees of any kind, and I disclaim any responsibility for any damage done to your computer, now or in the future, whether you follow my advice or not.)

Command One:  
`sudo mkdir "/Library/Internet Plug-Ins, disabled"<br />
` 

Command Two:  
`sudo mv "/Library/Internet Plug-Ins/JavaPluginCocoa.bundle" "/Library/Internet Plug-Ins, disabled/"`

If you don&#8217;t know how to run terminal commands:

  1. Trigger Spotlight by clicking on the magnifying glass in the upper-right-hand corner of your screen
  2. type in &#8220;Terminal&#8221;
  3. Once the application Terminal appears in the results, make sure it&#8217;s highlighted, then hit Enter to launch it
  4. Switch to your browser, copy the first command into your clipboard
  5. Switch back to Terminal and paste the line in
  6. Hit Enter
  7. You will probably be prompted to enter your password. Do so. 
      * It&#8217;s possible that after this step you&#8217;ll see an error message, something to the effect of you not being in the sudoers file, and this will be reported. Don&#8217;t worry about this. It just means that someone set up your Mac so you&#8217;re running with a standard user account, not an administrator account. This is A Good Thing.
      * If that does happen, you should contact the person who set up your Mac and have them help you complete these steps.
  8. As long as you don&#8217;t see any errors, the command probably worked
  9. Copy-and-paste and run the second command
 10. Quit Terminal
<l>Restart your browsers for the change to take effect</li> </ol> 

Once you&#8217;ve done that, please take a moment to tell Apple that they&#8217;ve dropped the ball on this vulnerability, and they need to fix it ASAP. The best way to do that is by posting a message to Apple using their [OS X feedback form](http://www.apple.com/feedback/macosx.html). If you have the time, try to post something about it publicly too, on your blog, Twitter, Facebook, etc. Even just a link to the article: [Critical Mac OS X Java Vulnerabilities](http://landonf.bikemonkey.org/code/macosx/CVE-2008-5353.20090519.html) and &#8220;Apple, fix this now!&#8221; would be great.