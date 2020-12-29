---
author: Avi
categories:
- none
date: "2016-02-05T14:47:48Z"
guid: http://aviflax.com/?p=12265
id: 12265
title: My Current View on REST, HTTP, and RPC for Business Software
url: /post/my-current-view-on-rest-http-and-rpc-for-business-software/
---
I just wrote this to a colleague at my current consulting gig and thought it was worth sharing more broadly:

> I hear you. As I mentioned, I’m also tired of REST. However, it’s important not to confuse REST and HTTP. HTTP is a protocol, and IMHO it’s an excellent protocol. Like any protocol, it’s not going to be appropriate for every use case, and it will be a smooth fit for some use cases and awkward for others. But that just means that it’s well-designed — it’s not too general. REST, on the other hand, is an architectural style for highly dynamic distributed systems with independent actors who change their behavior over time. REST is an excellent fit for _some_ use cases — just look at the Web. The World Wide Web is wildly successful and is fully RESTful.
> 
> Bottom line, if we’re going to use HTTP _as HTTP_, we should use it correctly — according to the spec. Much of the time, however, it’s not even worthwhile to try to use HTTP to integrate proprietary components — often RPC is a better choice. (It can be tunneled over HTTP but that’s not the same thing as using HTTP’s semantics.) And as for REST — in most cases it’s a waste of time to even consider it for business software.

Unfortunately the hype cycle for REST hasn’t completely petered out&#8230; this is just my attempt to help wrap that up.