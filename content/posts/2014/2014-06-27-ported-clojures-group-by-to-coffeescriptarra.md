---
author: Avi
categories:
- none
date: "2014-06-27T17:03:02Z"
format: status
guid: http://twitter-482630203605549058-post
id: 9083
tags:
- micro
- tweet
title: |
  Ported Clojure’s group-by to CoffeeScript:

  Arra&#8230;
url: /post/ported-clojures-group-by-to-coffeescriptarra/
---
Ported Clojure’s group-by to CoffeeScript:

Array::group_by = (f) -&gt[@reduce](http://twitter.com/reduce)ce (r,x) ->
  
k = f x
  
r[k] = r[k] or []
  
r[k].push x
  
r
  
, {}