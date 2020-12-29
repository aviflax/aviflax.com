---
author: Avi
categories:
- none
date: "2016-05-10T18:48:21Z"
format: status
guid: http://twitter-730167623195996160-post
id: 12780
tags:
- micro
- tweet
title: JQ is really nice for working with ElasticSearch:…
url: /post/jq-is-really-nice-for-working-with-elasticsearch/
---
JQ is really nice for working with ElasticSearch:

$ curl -s localhost:9200/indx/type/\_search | jq -r &#8216;.hits.hits | map(.\_id) | join(&#8220;n&#8221;)&#8217;