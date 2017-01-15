---
id: 431
title: 'OS X Tip: Staggered Login Items'
date: 2007-07-24T22:56:08+00:00
author: Avi
layout: post
guid: http://aviflax.com/post/os-x-tip-staggered-login-items/
permalink: /post/os-x-tip-staggered-login-items/
sandpaper:
  - "1"
categories:
  - none
---
Mac OS X 10.4 Tiger includes a new mechanism called [launchd](http://developer.apple.com/macosx/launchd.html). It&#8217;s an excellent system, which replaced many separate programs which all accomplished related tasks, like `init`, `mach_init`, `xinetd`, `RC`, `SystemStarter`, `watchdog`, and `cron`. A good overview is [launchd in Depth](http://www.afp548.com/article.php?story=20050620071558293).

launchd also took over responsibility for launching &#8220;Startup Items&#8221;, or &#8220;Login Items&#8221;, which start when a user logs in. This is an elegant and sensible change. However, there is at least one significant downside: unlike the mechanism in 10.3 Panther and earlier versions of OS X, which launched Login Items one at a time, sequentially, launchd launches every Login Item at the exact same time. This isn&#8217;t necessarily a downside for everyone; in fact, it may even be better for most people, who probably don&#8217;t have more than a handful of fairly lightweight Login Items. For people like me, however, who have quite a few Login Items set up, some of which aren&#8217;t so lightweight, the simultaneous launching of all those programs can tie up my system, making it unresponsive for up to a minute after I login. Maybe I&#8217;m inpatient, but when I log in I have things to do &#8211; I don&#8217;t want to wait a minute before I can do them.

[A Google search](http://www.google.com/search?q=os-x+startup+items+stagger&hl=en) reveals a bunch of solutions to this problem, most of which involve a shell script or an AppleScript or some combination of the two. Tonight, for some reason, I decided to switch over to a staggered launch method. I wasn&#8217;t sure exactly what approach I would take, until I read Luke Cowell&#8217;s [Get real about startup optimization](http://www.lukecowell.com/archives/2007/5/17/get_real_about_startup_optimization/). He specifically pointed out a performance issue with the AppleScript &#8220;tell application X to launch&#8221; command.

But while Luke ended up writing a shell script, and an AppleScript to launch that shell script, I thought I could come up with an AppleScript-only approach which would retain the speed and spirit of Luke&#8217;s approach.

In a nutshell, I came up with this template for my script:

`delay 10</p>
<p>do shell script "open '/Path/To/Application 1'"</p>
<p>delay 1<br />
do shell script "open '/Path/To/Application 2'"</p>
<p>delay 1<br />
do shell script "open '/Path/To/Application 3'"</p>
<p>...etc...`

In order to get the paths of the programs to launch, I opened up `~/Library/Preferences/loginwindow.plist` in a plist editor (I used [Pref Setter](http://homepage.mac.com/darkshadow02/apps.htm) but Apple&#8217;s [Property List Editor](http://en.wikipedia.org/wiki/Apple_Developer_Tools#Property_List_Editor) or even `defaults read loginwindow` would work too) and copied each Item&#8217;s path into the script. Then I just saved the script as an Application, and, in the Login Items tab of the Accounts preference pane, removed all the existing Items and replaced them with my script.

And it works! My system is now much more responsive from the moment I log in, and I can get to work immediately. I hope Apple addresses this minor shortcoming in launchd at some point, but until then, I&#8217;m good.