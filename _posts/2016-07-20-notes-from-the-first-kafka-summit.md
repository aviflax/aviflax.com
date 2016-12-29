---
id: 13085
title: Notes from the First Kafka Summit
date: 2016-07-20T09:29:03+00:00
author: Avi
layout: post
guid: http://aviflax.com/?p=13085
permalink: /post/notes-from-the-first-kafka-summit/
categories:
  - none
tags:
  - Software
---
I learned a lot at the first [Kafka Summit](http://kafka-summit.org), organized by [Confluent](http://www.confluent.io), and I’d love to try to share some of what I learned. This is a repost from the internal tech blog at [Park Assist](http://www.parkassist.com), and it’s a bit out of date as the conference was in April, but I figure it might have some value to someone stumbling across it.

## High-level summary {#high-levelsummary}

  * There’s a shit-ton of work going on right now in streaming data, at pretty much every level
  * There are a ton of stream processing (SP) frameworks and libraries being very actively developed: 
      * [Kafka Streams](http://kafka.apache.org/documentation.html#streams), [Spark 2](http://www.slideshare.net/databricks/2016-spark-summit-east-keynote-matei-zaharia), [Beam](http://beam.incubator.apache.org), [Flink](http://flink.apache.org)
  * Samza didn’t seem to be present. Curious and worrying. I’ve sent an inquiry to one of its creators.
  * Kafka is working _really_ well for _lots_ of companies
  * But: 
      * it still has some rough edges: deployment, operations, management, durability (with default settings)
      * they tend to be larger companies that can invest substantially in infrastructure, tooling, and operations
  * There’s a gap in the market for information, guidance, and services for small and medium companies
  * Heroku is stepping into that gap with [a hosted Kafka service](https://blog.heroku.com/archives/2016/4/26/announcing-heroku-kafka-early-access). 
      * This is very exciting. I’m psyched to try it out.

## Session Videos

Confluent has posted [videos of every single session](http://kafka-summit.org/schedule/) &mdash; very cool!

Some of my favorites:

  * [Fundamentals of Stream Processing with Apache Beam](http://www.confluent.io/kafka-summit-2016-systems-fundamentals-of-stream-processing-with-apache-beam)
  * [Introducing Kafka Streams: Large-scale Stream Processing with Kafka](http://www.confluent.io/kafka-summit-2016-systems-introducing-kafka-streams-large-scale-stream-processing-with-kafka)
  * [Kafka Connect: Real-time Data Integration at Scale](http://www.confluent.io/kafka-summit-2016-systems-kafka-connect-real-time-data-integration-at-scale-with-apache-kafka)
  * [Conquering All Your Stream Processing Needs with Kafka and Spark](http://www.confluent.io/kafka-summit-2016-systems-conquering-all-your-stream-processing-needs-with-kafka-and-spark)

And some sessions I missed but plan to watch:

  * [The Enterprise Service Bus is Dead! Long live the Enterprise Service Bus](http://www.confluent.io/kafka-summit-2016-users-the-enterprise-service-bus-is-dead-long-live-the-enterprise-service-bus)
  * [Advanced Streaming Analytics with Apache Flink and Apache Kafka](http://www.confluent.io/kafka-summit-2016-systems-advanced-streaming-analytics-with-apache-flink-and-apache-kafka)
  * [Building an Event-oriented Data Platform with Kafka](http://www.confluent.io/kafka-summit-2016-ops-building-an-event-oriented-data-platform-with-kafka)
  * [Kafka, Killer of Point-to-Point Integrations](http://www.confluent.io/kafka-summit-2016-users-kafka-killer-of-point-to-point-integrations)

## Deployment, Operations, Management, and Tooling; or: Kafka Itself {#deploymentoperationsmanagementandtoolingor:kafkaitself}

I didn’t spend much time focused on these topics, but I did learn a few things:

  * larger companies that use Kafka heavily have built lots of tooling around it: 
      * schema registries
      * topic registries
      * data dictionaries
      * proxies
      * client libraries
  * lots of companies have made lots of mistakes when using Kafka: 
      * large mess of undifferentiated topics 
          * no namespacing (e.g. prefixing)
          * no differentiating between public and private topics
      * problematic settings 
          * it’s very easy to accidentally lose data
          * the replication defaults are no good (wtf)
  * my conclusions: 
      * the cognitive load involved in operating Kafka well is currently high 
          * Specifically in the case of a large cluster with robust replication and many topics and many clients
          * I think our use case for on-site installs will be simpler: almost always two machines right next to each other, no AZs, etc
      * Utilizing Kafka and stream processing for a specific app or component or use case is fairly straightforward and as of this moment we have some pretty great options (modern producer, modern consumer, schema registry) 
          * But using is as the “nervous system” for an entire company is a whole different thing; you need more documentation, more conventions (e.g. around data evolution), more tooling, etc.

## Stream Processing {#streamprocessing}

  * A few different talks covered the principles and models involved in SP 
      * there seems to be a converging consensus that we need models, APIs, and DSLs that support processing events based on _event time_ rather than processing time, and for _out of order_ events. 
          * Flink (out now), Beam, Spark 2, and Kafka Streams (all coming soon) all support this
      * In addition to aligned windows and sliding windows, with which we’re probably familiar, another window type that was discussed were “session windows” — which could be _super_ useful for our visits. 
          * If you squint, then a bay’s visits can be thought of as sessions.
      * The Beam folks are positing that we need models (APIs and DSLs) that have first-class support for early (tentative/speculative) results, on-time results, late results, and corrections. 
          * They use something called a _watermark_ to determine when to produce potentially on-time results
          * Each streaming transformation that uses aggregation (which is by necessity windowed) _really should_ include a specification for _how_ to handle “refinements”
          * Kafka Streams seems to support this, albeit maybe in a somewhat rigid way

### Kafka Streams {#kafkastreams}

  * SP framework that’s more of a library
  * Combines the Kafka Consumer and Producer along with a sophisticated stream processing DSL to make sophisticated windowing, joining, and aggregate operations accessible
  * Supports event time and unordered events
  * Initial release (as part of Kafka 0.10) is targeted to be some time this summer
  * Vision is to make it radically easier to integrate sophisticated stream processing into apps
  * Because it’s “just a library” you can create SPs and deploy them however you want — deployment is decoupled from use of the library

### Beam {#beam}

  * An open-source fork of the core model behind [Google Cloud Dataflow](https://cloud.google.com/dataflow)
  * Appear to be aiming for a late summer initial release
  * A core API that’s sort-of a DSL, for expression stream processing operations with a high-level (declarative) syntax that can then be executed by an execution engine (a “runner”) 
      * Sort-of like SQL but without the textual language — just a programmatic API for now
  * Includes runners for Cloud Dataflow, Flink, and Spark 1.
  * The Beam Model 
      * _What_ » _Where_ » _When_ » _How_
      * _What_ are you computing
      * _Where_ in event time?
      * _When_ in processing time?
      * _How_ do refinements relate?
  * You specify (declare) those 4 things then the runner interprets them

### Spark 2 {#spark2}

  * Under active development right now, shooting for release next month
  * Introduces a new unified API that unifies processing of bounded and unbounded data, supports event-time processing, and unordered events
  * Support for Kafka is coming soon, but might not be released at exactly the same time as Spark 2 itself 
      * They’re considering unbundling it from the core Spark codebase and releasing it as a plugin

### Flink {#flink}

I didn’t actually attend the Flink session, but it was mentioned many times in many different sessions.

Flink is on my radar for a few reasons:

  * It aims to be a comprehensive framework covering both bounded and unbounded data processing (just as Spark 2)
  * It supports event time and unordered events
  * Apache Beam includes a Flink runner that [supports](http://beam.incubator.apache.org/capability-matrix/) almost all of Beam’s semantics 
      * Seems to me like this _might_ mean that it _might_ be “easy” to migrate an SP operation from Flink’s API to Beam’s
  * It recently hit 1.0 so it should be more mature than both Kafka Streams and Spark 2

## Conclusion {#conclusion}

I’m more convinced than ever that Kafka, and the paradigm it embodies, can make our systems radically simpler, faster, more maintainable, and more agile. It’s still early days and it’s going to take time and hard work to realize that potential. Thankfully there’s a large, energized, robust community putting in that time and hard work to make it happen.