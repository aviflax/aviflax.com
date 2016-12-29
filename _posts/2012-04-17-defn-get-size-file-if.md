---
id: 1862
title: |
  (defn get-size [file]
  (if (&#8230;.
date: 2012-04-17T23:11:52+00:00
author: Avi
layout: post
guid: http://aviflax.com/post/defn-get-size-file-if/
permalink: /post/defn-get-size-file-if/
aktt_notify_twitter:
  - 'yes'
aktt_twitter_id:
  - "192450346013048833"
categories:
  - none
tags:
  - tweet
---
(defn get-size [file]
    
(if (.isFile file)
      
(.length file)
      
(reduce +
        
(pmap get-size (.listFiles file)))))

beautiful!
   
#[clojure](http://search.twitter.com/search?q=%23clojure){.aktt_hashtag}