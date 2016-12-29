---
id: 12659
title: My AWS Wish List
date: 2016-04-15T12:53:53+00:00
author: Avi
layout: post
guid: http://aviflax.com/?p=12659
permalink: /post/my-aws-wish-list/
categories:
  - none
tags:
  - aws
  - hosting
  - iaas
  - paas
  - serverless
  - Software
---
As part of my new job at [Park Assist](http://parkassist.com/) I recently met with our AWS account representative (along with a few solutions architects). During the conversation I shared with them some enhancements I’d love to see from AWS:

  * **Kinesis supporting the Kafka wire protocol** would be great because we’re using Kafka in on-site installations (where it’s not possible to use Kinesis) so it’d be very helpful to be able to use the same Kafka libraries and APIs in AWS with Kinesis, so we wouldn’t have to operate Kafka clusters in AWS.
  * **Lambda supporting Ruby** would be great because we’re adopting Ruby as our primary server-side language, so this would make Lambda more aligned with our stack and in-house skills.
  * **A “no-ops” “version” of PostgreSQL in RDS, akin to Aurora** would be great because we’d get the excellent feature set of PostgreSQL with the simplified operations and billing of Aurora.
  * **A bastion-as-a-service service for VPC** would be great because I’ve seen too many teams just set up their security groups to poke all sorts of holes through their VPC, rather than follow the “best practice” of using a bastion host.
  * **A pricing model for EC2 similar to Google Cloud’s** would be great because it’s just much simpler — rather than having to do capacity planning and forecasting to buy reserved instances, with Google “compute” instances just get cheaper over time the longer they’re active, automatically. This feels _very_ “no-ops” to me.
  * **A “serverless” or “no-ops” option for hosting “traditional” Web apps, e.g. Rails, Django, Sinatra, Flask, Jetty, etc.** would be amazing because the drastically reduced billing costs and operational costs of “serverless” apps is just fantastic, but there’s still lots of cases wherein we need to run our own Web servers and/or deploy “monolithic” apps. There’s progress being made on this front on top of Lambda and API Gateway, but that’s really/kinda/sorta an elegant hack that’s just a bit too clever to be truly sustainable. This could be an enhancement to Elastic Beanstalk, some new integration mode of Lambda and API Gateway, or a brand-new service I suppose — whatever, I’d love to see this.

If there seems to be a theme here — well, yeah. I’m very bullish on “no-ops” services. Of course there _are_ ops going on — but behind the scenes. Just as there are actual servers behind “serverless” services as well. This seems to me a compelling and critical aspect of, and a logical progression of, the IaaS value proposition.