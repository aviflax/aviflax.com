---
author: Avi
categories:
- none
date: "2016-08-03T21:43:23Z"
guid: http://aviflax.com/?p=13138
id: 13138
tags:
- collaboration
- dev
- Development
- education
- learning
- Software
title: Code Review Rant
url: /post/code-review-rant/
---
I originally posted this rant on our internal message board at [Park Assist](http://www.parkassist.com) as a response to one of my coworker’s comments. They were concerned that using “Pull Requests” to facilitate, encourage, and propagate code review as a practice would yield a rigid, costly, contentious, and costly process.

> I completely agree with you that trust should be our default, and that we cannot and should not be spending any time nitpicking.
> 
> I also agree that we should avoid rigid rules and processes that lack nuance and preclude agency. And about not overthinking up front, and iterating on our work — i.e. accepting that no work is ever going to be perfect, so what matters is shipping it and improving it incrementally and iteratively.
> 
> And this is great, because now we’re talking about our _values_, our _principles_ — which are much more important than and must precede any discussion of our _process_.
> 
> In that light, I’d like to share one of _my_ core principles WRT software development: that code review — when done well — is incredibly valuable, helpful, and useful.
> 
> To be clear, by “code review” I don’t mean any specific _process_, but rather a general _practice_ wherein most or all code is appraised, considered, understood, and discussed by at least 2 people, at some point either before or shortly after shipping. As I wrote above, there are many different ways to implement such a practice.
> 
> I believe such a practice is incredibly valuable in that:
> 
>   * Flaws are easier and cheaper to correct earlier rather than later 
>       * “flaws” includes bugs, flat-out errors, sure — but it also includes things like poor readability; poor maintainability; rigidity; brittleness, etc. — at this point in our organization’s development I believe these are now much more important than they once were
>   * It disseminates and distributes knowledge 
>       * If only one person understands a given unit of code, then that’s a single point of failure. When that person leaves the organization, or is on vacaction, or is out sick, or is just really busy — the ability of the organization to change the code is impaired. (I.E. it’s more costly.) And not just the ability to _change_ it, but even the ability to _assess_ potential changes, so as to make good decisions about whether or not, or when, to make changes. (This can also be expressed as a risk factor; the more single points of failure, the higher the risk of problems being unsolved or taking a long time to solve, raising the potential impact of those problems.)
>       * If only one person understands a given unit of code, then in general it’ll be most cost-effective for that person to work on it in the future, rather than someone else. This is a compounding effect that leads to serious problems with distribution of labor.
>   * It engenders organic, contextual, collaborative discussions on the development of our products and on software development in general 
>       * This is a big one. These discussions can cover pretty much anything and everything: coding style, system design, patterns, readability, efficiency, philosophy, etc.
>       * These discussions are a fantastic way for people to exchange ideas on how to best do this work.
>       * This leads to these ideas getting better, and to each person learning more and learning faster and leveling up their skills and experience faster.
>       * This also leads to a given team eventually achieving a loose and thoughtful consensus on what they believe about software development, which leads to the systems being more consistent, which has all sorts of third-order benefits.
> 
> That [excellent article by Bruce Johnson](https://blog.fullstory.com/what-we-learned-from-google-code-reviews-arent-just-for-catching-bugs-b125a13aa292#.ihl2xifar) enumerated the benefits similarly:
> 
>   * An ounce of prevention is worth a pound of cure
>   * A bionic cultural hammer 
>       * Code reviews promote openness
>       * Code reviews raise team standards
>       * Code reviews propel teamwork
>       * Code reviews keep security top-of-mind
>       * Code reviews frame social recognition
>   * We shape our culture because it shapes us
> 
> If you haven’t had a chance to read it, I highly recommend it.
> 
> To paint a picture: imagine getting to sit down for a few minutes every day with a peer who is eager to see what you’ve been up to, excited to learn about it, and may even give some supportive, constructive, gentle suggestions for improving the work. Someone who loves geeking out on this stuff and wants to level up their own skills and just generally _do great work and get better **together**_.
> 
> I’ve experienced this, and it’s amazing, really fantastic when it’s working well. It takes effort and time to get there, but I believe it’s well worth it.