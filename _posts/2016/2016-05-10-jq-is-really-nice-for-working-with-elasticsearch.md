---
id: 12780
title: 'JQ is really nice for working with ElasticSearch:…'
date: 2016-05-10T18:48:21+00:00
author: Avi
layout: post
guid: http://twitter-730167623195996160-post
permalink: /post/jq-is-really-nice-for-working-with-elasticsearch/
categories:
  - none
tags:
  - micro
  - tweet
format: status
---
JQ is really nice for working with ElasticSearch:

$ curl -s localhost:9200/indx/type/\_search | jq -r &#8216;.hits.hits | map(.\_id) | join(&#8220;n&#8221;)&#8217;