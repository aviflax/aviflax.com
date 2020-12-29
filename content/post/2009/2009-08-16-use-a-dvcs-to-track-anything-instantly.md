---
aktt_notify_twitter:
- "yes"
aktt_tweeted:
- "1"
author: Avi
categories:
- none
date: "2009-08-16T12:08:29Z"
guid: http://aviflax.com/?p=589
id: 589
tags:
- dev
- dvcs
- Software
- Tech
- vcs
title: Use a DVCS to Track Anything Instantly
url: /post/use-a-dvcs-to-track-anything-instantly/
---
I recently stumbled across the essay [In brief praise of DVCSs](http://plasmasturm.org/log/523/) by [Aristotle Pagaltzis](http://plasmasturm.org/about/), and it was a revelation for me. I&#8217;d been wanting to try a DVCS for a while, but hadn&#8217;t really gotten around to it — the perceived benefit hadn&#8217;t justified the perceived effort. But when Aristotle pointed out that <q cite="http://plasmasturm.org/log/523/"><em>Subversion makes the mental overhead of creating a repository very much greater than any <abbr title="Distributed Version Control System">DVCS</abbr>,</em></q> something clicked. I saw an immediate benefit I&#8217;d gain from even simplistic usage of a DVCS, and so I immediately gave it a try.

I had a text file that I wanted to explicitly track versions of — I use Time Machine for incremental backup, which is great, but doesn&#8217;t always give me precise enough control of the snapshots, and I don&#8217;t always have the snapshots available. Once I read Aristotle&#8217;s essay, it only took me a few minutes to download and install [Mercurial](http://mercurial.selenic.com/), and then I started tracking my file with three simple commands: `hg init; hg add *; hg commit -m "initial"`. Quick, easy, and effective. From that point on, my folder was also a repository, and I could track specific revisions of my files by simply typing `hg commit -m "update"` at any point.

What I think is the killer realization here is that _it is now super easy to make any folder into a repository, and instantly start tracking versions of its contents._ I&#8217;ve used Subversion to make local repositories, and track local files in the past — and it really is many more steps, and much more work. It&#8217;s also messier, because the repository and the working copy must be separate entities — you have to think about where the repository should live, as opposed to the actual stuff, the working copy. With a DVSC, no such dichotomy exists. The repository and the actual stuff are one and the same. You can move them, zip them, email them — as long as the metadata directory is preserved (for example, `.hg` or `.git`), the folder remains a repository.

I&#8217;m thankful to Aristotle for helping me get past the initial barrier to entry, and start actually using a DVCS. I&#8217;m looking forward to learning more about them, and using them even more going forward.

(Bonus tip: on OS X, some applications save their data using a special type of file called a &#8220;package&#8221;, which is actually a directory with a special flag. One example is [OmniGraffle](http://www.omnigroup.com/applications/omnigraffle/), which I use frequently. Because these &#8220;files&#8221; are actually directories, they can be easily made into self-versioning files with their own self-contained repositories. Just navigate to the directory and run the commands above! From that point on, the file will be a repository and can track its own versions. Pretty useful!)

(I can&#8217;t explain exactly why I decided to try Mercurial first, before [Git](http://git-scm.com/) or [Bazaar](http://bazaar-vcs.org/). I&#8217;ve read many comparisons of them, and something about those comparisons just made me want to try it. I&#8217;m not sure exactly how, but I had built up the impression that Mercurial was somehow simpler, cleaner, more elegant, and more approachable than Git or Bazaar. I don&#8217;t know if that&#8217;s actually true, but the impression was enough that that&#8217;s where I started.)

(Aristotle&#8217;s mention of &#8220;mental overhead&#8221; as a decisive factor in using one system over another is something [I&#8217;ve been thinking about lately as well](http://aviflax.com/post/phrase-ive-been-using-frequen/), although I&#8217;ve used the more unwieldy &#8220;cognitive overhead.&#8221;)