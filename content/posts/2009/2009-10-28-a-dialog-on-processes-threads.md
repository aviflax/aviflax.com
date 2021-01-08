---
aktt_notify_twitter:
- "yes"
aktt_tweeted:
- "1"
author: Avi
categories:
- none
date: "2009-10-28T23:53:10Z"
excerpt: |
  I learned a lot from Ryan Tomayko's recent essay "I like Unicorn because it's Unix", and after I read it I had some questions rolling around my head which I couldn't quiet. So I wrote him an email. He was kind enough to respond quickly and at length, illuminating a subject I'd been fuzzy on for years. In fact, I thought his responses were edifying to the degree that they should be published. So after securing his permission, I'm reproducing our dialog here.
guid: http://aviflax.com/?p=679
id: 679
tags:
- concurrency
- dev
- Development
- processes
- Software
- threads
- UNIX
- web
title: A Dialog on Processes &#038; Threads
url: /post/a-dialog-on-processes-threads/
---
Cross-posted from [the Arc90 blog](http://blog.arc90.com/2009/10/26/a-dialog-on-processes-threads/).

I&#8217;ve been a fan of [Ryan Tomayko](http://tomayko.com/) ever since I stumbled across his [How I Explained REST to My Wife](http://tomayko.com/writings/rest-to-my-wife) in 2005. (That piece was so good that I actually performed it live during a [company](http://arc90.com) lunch in early 2006, with the inimitable [Kamni Khan](http://arc90.com/people/kamni-khan/).) He&#8217;s had a special place in my feed reader since before the Avi Flax release of [FeedLounge](http://en.wikipedia.org/wiki/FeedLounge) (yes, that actually happened). So as soon as his most recent essay, [I like Unicorn because it&#8217;s Unix](http://tomayko.com/writings/unicorn-is-unix), appeared in [my current feed reader](http://en.wikipedia.org/wiki/Google_Reader), as usual I read it immediately, and as usual I learned something.

The essay&#8217;s main points are that core Unix concepts such as `fork()`, `accept()`, `select()`, and Unix sockets had lamentably been ignored or neglected by proponents of Ruby and Python; that [Unicorn](http://unicorn.bogomips.org/) is <q cite="http://tomayko.com/writings/unicorn-is-unix">undoubtedly one of the best, most densely packed examples of Unix programming in Ruby I&#8217;ve come across</q>; and that Ruby (and Python) developers should learn more about these paradigms, and consider using them where appropriate.

While I learned much from the essay, and enjoyed reading it and following the &#8220;* is Unix&#8221; meme it sparked, after I read it I had some questions rolling around my head which I couldn&#8217;t quiet. So, since comments are currently disabled on Ryan&#8217;s site, I wrote him an email. He was kind enough to respond quickly and at length, illuminating a subject I&#8217;d been fuzzy on for years. In fact, I thought his responses were edifying to the degree that they should be published. So after securing his permission, I&#8217;m reproducing our dialog here.

<!--more-->

If you haven&#8217;t read it yet, I suggest reading [I like Unicorn because it&#8217;s Unix](http://tomayko.com/writings/unicorn-is-unix) before proceeding.

I wrote Ryan:

> Hi Ryan, thanks for your recent piece on Unicorn and Unix. Enjoyed it, and learned… well, I learned that there&#8217;s even more important stuff I don&#8217;t know. (It&#8217;s funny sometimes being a software developer/architect and not having a CS background.)
> 
> Anyway, you definitely got me interested in learning more about the Unix programming and concurrency models, thank you for that.
> 
> One thing that has me a little confused: I got the impression that a lot of the difference between the Unix and Java/Windows approaches boils down to processes versus threads. Is that right? Is it an oversimplification?
> 
> (The process vs. threads thing seems related to the discussions going on about how to write concurrent programs; specifically the debates about shared data vs. message passing. Isn&#8217;t IPC essentially message passing?)
> 
> If that&#8217;s right, then what about Apache? Wasn&#8217;t the point of 2.x that it moved to a thread-based model over the process-based model of 1.x? And if so, then… what&#8217;s up with that? I&#8217;d think there were a ton of very smart, very unixy people involved in that effort; they must have had some good reasons for the switch, right? Or, more likely, I&#8217;m missing something.
> 
> Thanks!
  
> Avi 

And he responded, that night:

> _On Wed, Oct 7, 2009 at 7:44 AM, Avi Flax <avif@arc90.com> wrote:_
> 
> _> Hi Ryan, thanks for your recent piece on Unicorn and Unix. Enjoyed it, and learned… well, I learned that there&#8217;s even more important stuff I don&#8217;t know. (It&#8217;s funny sometimes being a software developer/architect and not having a CS background.)_
> 
> Tell me about it. I don&#8217;t have a high school diploma :)
> 
> _> Anyway, you definitely got me interested in learning more about the Unix programming and concurrency models, thank you for that. One thing that has me a little confused: I got the impression that a lot of the difference between the Unix and Java/Windows approaches boils down to processes versus threads. Is that right? Is it an oversimplification?_
> 
> I think that&#8217;s about right. There&#8217;s a lot of other important differences but, now that I think about it, they all seem to stem from the basic model of concurrency. Java/Windows people pretty much have to use threads because their processes are handicapped. Unix has good processes, so Unix people can use either processes or threads.
> 
> Now, the Unicorn piece was talking specifically about threads in Ruby. Native threads are a lot more powerful than Ruby threads. I always choose processes over threads (even native threads) when I can get away with it, but native threads are useful, whereas Ruby threads really aren&#8217;t.
> 
> _> (The process vs. threads thing seems related to the discussions going on about how to write concurrent programs; specifically the debates about shared data vs. message passing. Isn&#8217;t IPC essentially message passing?)_
> 
> That&#8217;s precisely what it is. &#8220;Message passing&#8221; usually implies a specific kind of object encoding and message dispatch, though, whereas IPC is a bit more general. You have to build up messages and dispatch on top of simple binary streams between processes, which is what most message passing systems do but IPC usually implies you build that part yourself.
> 
> It&#8217;s good to think of Unix IPC as message passing, conceptually.
> 
> _> If that&#8217;s right, then what about Apache? Wasn&#8217;t the point of 2.x that it moved to a thread-based model over the process-based model of 1.x? And if so, then… what&#8217;s up with that? I&#8217;d think there were a ton of very smart, very unixy people involved in that effort; they must have had some good reasons for the switch, right? Or, more likely, I&#8217;m missing something._
> 
> Process-per-connection &#8212; the model used by unicorn and the echo server example and apache&#8217;s preforking mpm (I think) &#8212; falls down at a certain level of high concurrency. There&#8217;s too much overhead in processes to solve C10K (http://www.kegel.com/c10k.html) problems. At that point, you basically have to use native threads or async/events. This doesn&#8217;t mean process-per-connection isn&#8217;t the right solution for a wide range of problems. Further, the basic technique of forking and sharing a socket between processes underlies async/event solutions &#8212; it&#8217;s just that each process can handle more than one connection in parallel (without threads). High concurrency servers that use fork(2), a shared socket, and async IO include nginx, memcached, lighttpd, and HAProxy. High concurrency servers that use threads include Apache, Varnish, and Squid. All are stable and production proven.
> 
> Here&#8217;s what I&#8217;m personally trying to forward in all of this: people confuse the idea that threads can always be applied with the idea that threads are always \*right\*. Just because a general solution exists (threads) doesn&#8217;t mean a more specific technique that uses processes isn&#8217;t the better solution. I really like process-per-connection where I can get away with it (and Unicorn is a perfect example of where you can get away with it) because it&#8217;s so amazingly simple; much simpler than threaded code and definitely much simpler than async/events. I like processes + async IO for highly concurrent systems because you just can&#8217;t beat it performance-wise and I personally enjoy working with event-based code. But threads? I can&#8217;t think of a problem I like solving with them, even though they can be used to solve a wide range of them.
> 
> Thanks,
  
> Ryan

As you can see, Ryan was extremely generous with his time in responding to my email. Thanks Ryan! I learned a lot from this exchange, and I really appreciate it. Congratulations on [your new position at GitHub](http://github.com/blog/529-ryan-tomayko-is-a-githubber), it&#8217;s clearly a perfect match.