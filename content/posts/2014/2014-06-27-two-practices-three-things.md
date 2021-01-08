---
author: Avi
categories:
- none
date: "2014-06-27T09:16:06Z"
guid: http://aviflax.com/?p=9035
id: 9035
tags:
- life
- projects
- Software
- time
- work
title: Two Practices, Three Things
url: /post/two-practices-three-things/
---
I’ve struggled with to-do lists my entire life. I’ve tried dozens of systems for tracking and managing my personal and professional tasks, and sooner or later I nuked each from orbit as I ran for my life. Paper-based, [Web-based](http://alexking.org/projects/tasks), app-based, whatever — nothing has ever worked for me. I just get overwhelmed by the backlog and the constant feeling of failure and then slump into a long, slow, energy-sapping bout of depression.

I’ve been through so many rounds of this, from “hey, look at this cool new system, I should try this, it’ll totally work this time!” to the inevitable declaration of to-do bankruptcy that for the past few years I haven’t even tried. I’ve essentially given up on keeping track of my to-dos, reasoning that muddling through, whacking each task as it popped up, was preferable to the depression inevitably precipitated by an oppressive backlog of to-do items. I still felt bad about it though — I felt that I _should_ have been using a list. It was a lose-lose situation: if I used a to-do list I felt bad and if I didn’t I felt bad.

So I was encouraged when in October 2012 I read Jeff Atwood’s post [Todon’t](http://blog.codinghorror.com/todont/), wherein he helped me realize that I wasn’t unique in feeling oppressed by my lists, and I didn’t really need them anyway to pursue the things that _really_ matter to me. The post helped me feel a little less guilty as I continued to live and work without to-do lists. I did however still have a nagging sense that I should really have _some_ kind of system — that without one I was less efficient and focused than I could be.

Then this past April, on the 16th, Mr. Atwood published a follow-up post: [Three Things](http://blog.codinghorror.com/three-things/), wherein he elaborated on an idea from his earlier post: that we should always, at any given moment, _just know_ what our main priorities are — that if we need a to-do list to know that, then we’re probably too scattered and not being truly productive, effective, or proactive.

That post stuck in my head, and I found myself occasionally opening a text editor or a (digital) sticky note and jotting down my three things for that day. I’d then refer to that list throughout the day. I found this hugely helpful — both the exercise of organizing my thoughts and writing down my three things, and being able to refer to them throughout the day. Throughout the course of a given day, I found that when I needed to reset, or to get grounded, I could just pull up that day’s list and review it, re-centering myself on the things that really mattered that day.

That ad-hoc system worked quite well, but I found myself wishing I had a clear and simple way to refer to yesterday’s things. But I didn’t want them getting in my way, and I didn’t want to have to perform a bunch of manual steps to juggle the transition from yesterday’s things to today’s. I was also concerned that if I started every morning by opening up the list and seeing yesterday’s things, then the exercise of thinking about today’s things would be unduly influenced by _yesterday_. I wanted to start each day fresh, but still have the things from prior days available for reference. This called for software.

Earlier in April, on the 10th, John Resig published [Write Code Every Day](http://ejohn.org/blog/write-code-every-day/), wherein he described his personal practice of working on his personal “side” projects daily. He discussed his motivations, his experience, and his satisfying results. Resig’s essay resonated with me, painfully so, to the degree that it was difficult for me to read. It brought up all sorts of issues for me: that I missed writing code — building software — every day; that I regretted that all my personal projects had stalled; and that those feelings were causing stress and guilt to seep into all other aspects of my life. It helpfully reframed my angst about not making progress on things that mattered to me as simply a time management problem, one that could be solved with a time management practice. That was a seductive and massively appealing idea to me, one that lingered in the back of my head over the following week.

So when Mr. Atwood published “Three Things” six days later, and I started dabbling with _that_ practice, I was primed to frame the practical aspects of that practice as a set of problems that could or should be solved with software — one that I could solve by writing my own app as a personal side project. I think I was itching to try out a version of Resig’s practice, and my experiences with Atwood’s practice helpfully supplied a test case. To borrow a phrase that [Steven Johnson](http://www.stevenberlinjohnson.com) introduced me to in his book [Where Good Ideas Come From](http://www.amazon.com/exec/obidos/ASIN/1594487715/stevenberlinj-20): working on a side project and making real progress on it now seemed like the “adjacent possible”. I actually already had a different side project that I had been planning to resume work on, but it was hard for me to get going — that was a much larger, more ambitious project that had been stalled for a good while. Basically there was too much emotional baggage associated with that project. So when I had the idea to make an app for Three Things, I just started. I decided to devote my daily rail commute between White Plains and Grand Central Terminal to the practice of daily coding.

And it worked.

I made [Three Things, the app](http://3things.aviflax.com). I made it for myself but I’ve also deployed it for anyone to use and I’ve [opened up the code](https://github.com/aviflax/3things/) so anyone can customize it for themselves.

I’ve been using Three Things (the app) for about a month now, and it’s been working really well for me. I love that when I open it up every morning I’m greeted with a fresh blank slate — just the question “What three things do I need to do today?” and three spaces to enter my three things. I love that my prior things are hidden away by default, but readily available for reference with a simple click. I love that it works offline. I love that I can check off the things I’ve completed and that when I do a satisfying line gets drawn through them. In short, I love the app because I designed it to solve _my_ problems in _just_ the way that works for _me_. There’s something amazing about making a custom app just to scratch one’s own itch, and I’m really happy that I’ve done this. It had been awhile.

<!--

<p>I should probably write a separate post about the technical aspects of designing and building the app, but I’ll just share a little about it now. I really enjoyed the process. I decided to build the app as a Web app, one which is 100% client-side, which means it runs solely in the user’s Web browser — there’s no server–side logic. The Web server just serves up the files which comprise the app; once they’re downloaded the app and its data are fully contained in the browser. I made my first Git commit on 24 April and then started using the app on 19 May after 16 additional commits. The app worked pretty well for me right off the bat. Over the course of the following month I made 65 additional commits to polish the app and prepare it for release.</p>

-->

These two practices are both making a big difference in my life. I’m grateful to Mr. Resig and Mr. Atwood, and I’m excited to tackle my next personal project with my daily coding time. If you’re intrigued by either of these practices I encourage you to give them a try. And if you decide to try three things, the practice, consider trying [Three Things, the app](http://3things.aviflax.com). I’d love to hear what you think!