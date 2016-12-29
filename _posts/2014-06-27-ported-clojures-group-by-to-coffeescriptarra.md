---
id: 9083
title: |
  Ported Clojure’s group-by to CoffeeScript:
  
  Arra&#8230;
date: 2014-06-27T17:03:02+00:00
author: Avi
layout: post
guid: http://twitter-482630203605549058-post
permalink: /post/ported-clojures-group-by-to-coffeescriptarra/
categories:
  - none
tags:
  - micro
  - tweet
format: status
---
Ported Clojure’s group-by to CoffeeScript:

Array::group_by = (f) -&gt[@reduce](http://twitter.com/reduce)ce (r,x) ->
  
k = f x
  
r[k] = r[k] or []
  
r[k].push x
  
r
  
, {}