---
author: Avi
categories:
- none
date: "2013-10-10T16:20:51Z"
guid: http://aviflax.com/?p=8231
id: 8231
tags:
- api
- clojure
- lib
- library
- rest
- restful
- Software
- web
title: 'My first open source Clojure library: Resourceful'
url: /post/my-first-open-source-clojure-library-resourceful/
---
I just released my first open source [Clojure](http://clojure.org) library: [Resourceful](https://github.com/aviflax/resourceful). It provides a more concise and more RESTful alternative to [Compojure’s](https://github.com/weavejester/compojure/) routes DSL.

If you’re interested in what Resourceful concretely does and how it works, that’s on [the project page](https://github.com/aviflax/resourceful). In this post I’ll tell the story of how Resourceful came to be.

Resourceful was extracted from a personal side project which is centered on a Web API. I considered implementing the API using a framework such as [Bishop](https://github.com/cmiles74/bishop) or [Liberator](http://clojure-liberator.github.io/liberator/). But after giving Liberator a try — I had previously used Bishop — I realized that frameworks just aren’t for me — they rub me the wrong way. I much prefer libraries, the members of which I can freely compose as I see fit. (I’m actually planning to develop a talk to explore this preference.)

So I decided to give Compojure a try. It felt nice and light and flexible at first, and it worked. But I soon found myself writing a bunch of code to implement Web/REST best practices for my resources. More broadly, I didn’t like that my code now expressed a bunch of routes, as opposed to resources. A Web API should be composed of _resources_, not _routes_, and those resources should comply with Web/HTTP best practices, such as supporting HEAD and OPTIONS, responding to an unsupported method with 405 (not 404), etc.

So it wasn’t long before I created a macro named `resource` to enable me to expressively define and implement my resources, so that the paradigm of my code would match the paradigm of the Web. It was the most ambitious Clojure macro I had created to date, so I shared it at the [Arc90](http://arc90.com/) code review. I got some great feedback, which included that I should release this macro as a library. Hence Resourceful.

If you’re building a Web API or a RESTful web application/api/service with Compojure, you may find Resourceful useful.

If you give it a try, or even if you don’t, I’d love to hear what you think!