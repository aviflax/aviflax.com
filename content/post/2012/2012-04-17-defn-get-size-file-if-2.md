---
aktt_notify_twitter:
- "yes"
aktt_twitter_id:
- "192450346013048833"
author: Avi
categories:
- none
date: "2012-04-17T23:11:52Z"
guid: http://aviflax.com/post/defn-get-size-file-if-2/
id: 1863
tags:
- tweet
title: |
  (defn get-size [file]
  (if (&#8230;.
url: /post/defn-get-size-file-if-2/
---
(defn get-size [file]
    
(if (.isFile file)
      
(.length file)
      
(reduce +
        
(pmap get-size (.listFiles file)))))

beautiful!
   
#[clojure](http://search.twitter.com/search?q=%23clojure){.aktt_hashtag}