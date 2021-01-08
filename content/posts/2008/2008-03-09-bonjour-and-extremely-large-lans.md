---
author: Avi
categories:
- none
date: "2008-03-09T15:26:39Z"
guid: http://aviflax.com/post/bonjour-and-extremely-large-lans/
id: 443
tags:
- bonjour
- mac
- network
- networking
- os
- osx
- Software
- x
title: Bonjour and Extremely Large LANs
url: /post/bonjour-and-extremely-large-lans/
---
Elina and I occasionally eat at [Cafe Nana](http://www.cafenana.com/) at the [Columbia Hillel](http://www.hillel.columbia.edu/). When we&#8217;re there, I frequently connect my MacBook to Columbia&#8217;s freely available wifi network. The network works well, and I definitelt appreciate it.

However, whenever I connect to the network, I notice my [MenuMeters](http://www.ragingmenace.com/software/menumeters/) Network monitor showing a persistent high level of throughput, ranging from 15 to 35 KBps. This is odd, given that I have no programs running. So I pop open [Little Snitch](http://www.obdev.at/products/littlesnitch/index.html)&#8216;s Network Monitor &#8211; an excellent tool &#8211; to see what&#8217;s going on. Looks like mDNSResponder&#8217;s going a little nuts, talking to hundreds of addresses in quick succession.

Here&#8217;s a screenshot:

<img src="http://aviflax.com/wp-content/uploads/2008/03/little-snitch-network-monitor-mdnsresponder-traffic-columbia.png" alt="Little Snitch Network Monitor mDNSResponder Traffic Columbia.png" border="0" width="310" height="368" />

At the same time, I start getting a lot of Little Snitch traffic prompts for nmbd, for various ports, like this:

<img src="http://aviflax.com/wp-content/uploads/2008/03/little-snitch-network-monitor-nmbd-prompt-at-columbia.png" alt="Little Snitch Network Monitor nmbd prompt at Columbia.png" border="0" width="556" height="361" />

Here&#8217;s a snapshot of Little Snitch&#8217;s connection history for mDNSResponder:

<div style="height: 20em; overflow: scroll;">
  <pre>
Connection report for process: mDNSResponder (/usr/sbin/mDNSResponder)
Total: 132.4kB sent, 10.1MB received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.3kB received
	dyn-160-39-251-87.dyn.columbia.edu (160.39.251.87), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.4kB received
	dyn-160-39-252-75.dyn.columbia.edu (160.39.252.75), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.9kB received
	dyn-wireless-245-241.dyn.columbia.edu (160.39.245.241), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 106.1kB received
	dyn-160-39-251-219.dyn.columbia.edu (160.39.251.219), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-250-228.dyn.columbia.edu (160.39.250.228), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.6kB received
	dyn-160-39-242-239.dyn.columbia.edu (160.39.242.239), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 290.5kB received
	dyn-wireless-244-69.dyn.columbia.edu (160.39.244.69), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 330.2kB received
	dyn-160-39-252-155.dyn.columbia.edu (160.39.252.155), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 192 Bytes received
	dyn-160-39-251-215.dyn.columbia.edu (160.39.251.215), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 73.8kB received
	dyn-wireless-246-190.dyn.columbia.edu (160.39.246.190), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 148.5kB received
	dyn-160-39-252-103.dyn.columbia.edu (160.39.252.103), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 50.4kB received
	dyn-160-39-254-126.dyn.columbia.edu (160.39.254.126), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-251-224.dyn.columbia.edu (160.39.251.224), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 153.7kB received
	dyn-160-39-247-178.dyn.columbia.edu (160.39.247.178), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 74.5kB received
	dyn-160-39-253-192.dyn.columbia.edu (160.39.253.192), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 221.0kB received
	dyn-160-39-241-192.dyn.columbia.edu (160.39.241.192), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 87.9kB received
	dyn-160-39-250-130.dyn.columbia.edu (160.39.250.130), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 211.1kB received
	dyn-160-39-253-57.dyn.columbia.edu (160.39.253.57), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 64.1kB received
	dyn-wireless-246-17.dyn.columbia.edu (160.39.246.17), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 150.3kB received
	dyn-160-39-243-121.dyn.columbia.edu (160.39.243.121), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 186.2kB received
	dyn-160-39-250-198.dyn.columbia.edu (160.39.250.198), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 40.9kB received
	dyn-160-39-242-241.dyn.columbia.edu (160.39.242.241), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 27.4kB received
	dyn-160-39-254-231.dyn.columbia.edu (160.39.254.231), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 71.2kB received
	dyn-160-39-253-24.dyn.columbia.edu (160.39.253.24), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 79.6kB received
	dyn-160-39-252-251.dyn.columbia.edu (160.39.252.251), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 31.9kB received
	dyn-160-39-255-101.dyn.columbia.edu (160.39.255.101), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.3kB received
	dyn-160-39-255-176.dyn.columbia.edu (160.39.255.176), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 131.3kB received
	dyn-wireless-245-201.dyn.columbia.edu (160.39.245.201), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 29.4kB received
	dyn-160-39-251-157.dyn.columbia.edu (160.39.251.157), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 82.6kB received
	dyn-wireless-245-171.dyn.columbia.edu (160.39.245.171), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.9kB received
	dyn-160-39-242-16.dyn.columbia.edu (160.39.242.16), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 36.0kB received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.4kB received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.3kB received
	dyn-wireless-245-39.dyn.columbia.edu (160.39.245.39), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.7kB received
	dyn-160-39-251-193.dyn.columbia.edu (160.39.251.193), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 38.9kB received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 110.4kB received
	dyn-160-39-252-34.dyn.columbia.edu (160.39.252.34), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 75.0kB received
	dyn-160-39-255-123.dyn.columbia.edu (160.39.255.123), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.5kB received
	dyn-wireless-245-142.dyn.columbia.edu (160.39.245.142), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.5kB received
	dyn-160-39-253-134.dyn.columbia.edu (160.39.253.134), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 35.8kB received
	dyn-160-39-243-62.dyn.columbia.edu (160.39.243.62), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 26.2kB received
	dyn-wireless-246-110.dyn.columbia.edu (160.39.246.110), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 62.4kB received
	dyn-160-39-255-72.dyn.columbia.edu (160.39.255.72), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 458 Bytes received
	dyn-wireless-245-23.dyn.columbia.edu (160.39.245.23), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 37.3kB received
	dyn-160-39-255-157.dyn.columbia.edu (160.39.255.157), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 82.1kB received
	dyn-wireless-244-171.dyn.columbia.edu (160.39.244.171), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 69.9kB received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 106.3kB received
	224.0.0.251 (224.0.0.251), Port 5353 (mdns), Protocol 17 (UDP), 106.3kB sent, 0 Bytes received
	dyn-160-39-252-109.dyn.columbia.edu (160.39.252.109), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 29.8kB received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 32.0kB received
	dyn-160-39-242-87.dyn.columbia.edu (160.39.242.87), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.7kB received
	dyn-wireless-244-237.dyn.columbia.edu (160.39.244.237), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 79.7kB received
	dyn-160-39-250-143.dyn.columbia.edu (160.39.250.143), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.9kB received
	dyn-160-39-254-242.dyn.columbia.edu (160.39.254.242), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.8kB received
	dyn-160-39-252-253.dyn.columbia.edu (160.39.252.253), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.3kB received
	dyn-160-39-251-58.dyn.columbia.edu (160.39.251.58), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 27.0kB received
	dyn-160-39-241-51.dyn.columbia.edu (160.39.241.51), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 25.3kB received
	dyn-160-39-243-47.dyn.columbia.edu (160.39.243.47), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 64.9kB received
	dyn-160-39-241-63.dyn.columbia.edu (160.39.241.63), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 12.0kB received
	dyn-160-39-242-74.dyn.columbia.edu (160.39.242.74), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 38.2kB received
	dyn-160-39-247-175.dyn.columbia.edu (160.39.247.175), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.4kB received
	dyn-160-39-252-145.dyn.columbia.edu (160.39.252.145), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 41.7kB received
	dyn-160-39-242-150.dyn.columbia.edu (160.39.242.150), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 34.2kB received
	dyn-160-39-241-84.dyn.columbia.edu (160.39.241.84), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 104.3kB received
	dyn-wireless-245-224.dyn.columbia.edu (160.39.245.224), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-242-240.dyn.columbia.edu (160.39.242.240), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-251-133.dyn.columbia.edu (160.39.251.133), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.1kB received
	dyn-wireless-244-32.dyn.columbia.edu (160.39.244.32), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 26.1kB received
	dyn-160-39-241-250.dyn.columbia.edu (160.39.241.250), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 33.9kB received
	dyn-wireless-245-204.dyn.columbia.edu (160.39.245.204), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 33.2kB received
	dyn-wireless-245-93.dyn.columbia.edu (160.39.245.93), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 26.1kB received
	dyn-160-39-251-197.dyn.columbia.edu (160.39.251.197), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 26.9kB received
	dyn-wireless-246-12.dyn.columbia.edu (160.39.246.12), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 23.6kB received
	dyn-wireless-244-31.dyn.columbia.edu (160.39.244.31), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 113.4kB received
	dyn-160-39-255-107.dyn.columbia.edu (160.39.255.107), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 23.8kB received
	dyn-wireless-245-100.dyn.columbia.edu (160.39.245.100), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 21.6kB received
	dyn-160-39-255-113.dyn.columbia.edu (160.39.255.113), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 52.9kB received
	dyn-160-39-250-211.dyn.columbia.edu (160.39.250.211), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.9kB received
	dyn-160-39-250-194.dyn.columbia.edu (160.39.250.194), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 75.2kB received
	dyn-160-39-252-163.dyn.columbia.edu (160.39.252.163), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 72.6kB received
	dyn-wireless-245-121.dyn.columbia.edu (160.39.245.121), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 31.7kB received
	dyn-160-39-253-174.dyn.columbia.edu (160.39.253.174), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 30.6kB received
	dyn-160-39-251-235.dyn.columbia.edu (160.39.251.235), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 42.9kB received
	dyn-160-39-242-170.dyn.columbia.edu (160.39.242.170), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-242-83.dyn.columbia.edu (160.39.242.83), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 146.3kB received
	dyn-160-39-252-204.dyn.columbia.edu (160.39.252.204), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 80.7kB received
	dyn-160-39-241-249.dyn.columbia.edu (160.39.241.249), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 105.0kB received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.6kB received
	dyn-wireless-246-244.dyn.columbia.edu (160.39.246.244), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 15.7kB received
	dyn-wireless-246-140.dyn.columbia.edu (160.39.246.140), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.7kB received
	dyn-160-39-243-171.dyn.columbia.edu (160.39.243.171), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.5kB received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 27.2kB received
	dyn-160-39-241-217.dyn.columbia.edu (160.39.241.217), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 60.5kB received
	dyn-wireless-245-111.dyn.columbia.edu (160.39.245.111), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 20.8kB received
	dyn-160-39-250-138.dyn.columbia.edu (160.39.250.138), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 77.3kB received
	dyn-160-39-252-107.dyn.columbia.edu (160.39.252.107), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 60.9kB received
	dyn-160-39-242-36.dyn.columbia.edu (160.39.242.36), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 118.2kB received
	dyn-160-39-254-128.dyn.columbia.edu (160.39.254.128), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 78.3kB received
	dyn-wireless-244-167.dyn.columbia.edu (160.39.244.167), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 76.2kB received
	dyn-160-39-241-80.dyn.columbia.edu (160.39.241.80), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 182.5kB received
	dyn-160-39-242-91.dyn.columbia.edu (160.39.242.91), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.0kB received
	dyn-wireless-244-152.dyn.columbia.edu (160.39.244.152), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 31.7kB received
	dyn-160-39-255-20.dyn.columbia.edu (160.39.255.20), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 39.5kB received
	dyn-160-39-242-251.dyn.columbia.edu (160.39.242.251), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.8kB received
	dyn-wireless-246-214.dyn.columbia.edu (160.39.246.214), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 80.5kB received
	dyn-160-39-247-28.dyn.columbia.edu (160.39.247.28), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 27.0kB received
	dyn-160-39-253-202.dyn.columbia.edu (160.39.253.202), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 28.3kB received
	dyn-160-39-247-219.dyn.columbia.edu (160.39.247.219), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 30.7kB received
	dyn-160-39-253-90.dyn.columbia.edu (160.39.253.90), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 84.0kB received
	dyn-160-39-253-176.dyn.columbia.edu (160.39.253.176), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.2kB received
	dyn-wireless-245-178.dyn.columbia.edu (160.39.245.178), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 21.2kB received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 37.2kB received
	dyn-wireless-244-10.dyn.columbia.edu (160.39.244.10), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-wireless-244-16.dyn.columbia.edu (160.39.244.16), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 124.1kB received
	dyn-wireless-244-67.dyn.columbia.edu (160.39.244.67), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 51.8kB received
	dyn-wireless-245-164.dyn.columbia.edu (160.39.245.164), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 33.7kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 26.3kB received
	dyn-160-39-253-89.dyn.columbia.edu (160.39.253.89), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-252-194.dyn.columbia.edu (160.39.252.194), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.0kB received
	dyn-160-39-242-107.dyn.columbia.edu (160.39.242.107), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 76.7kB received
	dyn-160-39-241-120.dyn.columbia.edu (160.39.241.120), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 74.0kB received
	dyn-160-39-251-194.dyn.columbia.edu (160.39.251.194), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 488 Bytes received
	dyn-wireless-246-242.dyn.columbia.edu (160.39.246.242), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 139.4kB received
	dyn-160-39-253-46.dyn.columbia.edu (160.39.253.46), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 77.0kB received
	dyn-160-39-241-245.dyn.columbia.edu (160.39.241.245), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-250-48.dyn.columbia.edu (160.39.250.48), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 21.1kB received
	dyn-160-39-250-141.dyn.columbia.edu (160.39.250.141), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.0kB received
	dyn-160-39-243-87.dyn.columbia.edu (160.39.243.87), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 117.5kB received
	dyn-160-39-250-112.dyn.columbia.edu (160.39.250.112), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 23.6kB received
	dyn-wireless-245-227.dyn.columbia.edu (160.39.245.227), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 123.8kB received
	dyn-wireless-246-224.dyn.columbia.edu (160.39.246.224), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.1kB received
	dyn-160-39-251-187.dyn.columbia.edu (160.39.251.187), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 126.9kB received
	dyn-160-39-252-51.dyn.columbia.edu (160.39.252.51), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.1kB received
	dyn-wireless-245-78.dyn.columbia.edu (160.39.245.78), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 21.7kB received
	dyn-160-39-243-65.dyn.columbia.edu (160.39.243.65), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.1kB received
	dyn-160-39-243-240.dyn.columbia.edu (160.39.243.240), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 38.4kB received
	dyn-160-39-255-44.dyn.columbia.edu (160.39.255.44), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.2kB received
	dyn-wireless-244-180.dyn.columbia.edu (160.39.244.180), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-241-48.dyn.columbia.edu (160.39.241.48), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.2kB received
	dyn-160-39-242-230.dyn.columbia.edu (160.39.242.230), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.8kB received
	ff02::fb (ff02::fb), Port 5353 (mdns), Protocol 17 (UDP), 22.2kB sent, 0 Bytes received
	dyn-wireless-244-110.dyn.columbia.edu (160.39.244.110), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.0kB received
	dyn-160-39-241-237.dyn.columbia.edu (160.39.241.237), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.7kB received
	dyn-wireless-245-136.dyn.columbia.edu (160.39.245.136), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-wireless-246-116.dyn.columbia.edu (160.39.246.116), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.1kB received
	dyn-160-39-255-199.dyn.columbia.edu (160.39.255.199), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-247-133.dyn.columbia.edu (160.39.247.133), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-wireless-246-32.dyn.columbia.edu (160.39.246.32), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 75 Bytes received
	dyn-160-39-250-126.dyn.columbia.edu (160.39.250.126), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-251-237.dyn.columbia.edu (160.39.251.237), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.5kB received
	dyn-160-39-242-152.dyn.columbia.edu (160.39.242.152), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 35.1kB received
	dyn-160-39-251-98.dyn.columbia.edu (160.39.251.98), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.7kB received
	dyn-160-39-241-225.dyn.columbia.edu (160.39.241.225), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.5kB received
	dyn-wireless-244-136.dyn.columbia.edu (160.39.244.136), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.0kB received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 33.3kB received
	dyn-160-39-250-199.dyn.columbia.edu (160.39.250.199), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.5kB received
	dyn-wireless-244-98.dyn.columbia.edu (160.39.244.98), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 30.2kB received
	dyn-160-39-241-124.dyn.columbia.edu (160.39.241.124), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-242-166.dyn.columbia.edu (160.39.242.166), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 18.5kB received
	dyn-160-39-252-114.dyn.columbia.edu (160.39.252.114), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 28.8kB received
	dyn-160-39-254-104.dyn.columbia.edu (160.39.254.104), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.2kB received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.3kB received
	dyn-wireless-245-185.dyn.columbia.edu (160.39.245.185), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 16.9kB received
	dyn-160-39-247-239.dyn.columbia.edu (160.39.247.239), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.5kB received
	dyn-160-39-252-213.dyn.columbia.edu (160.39.252.213), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.5kB received
	dyn-wireless-244-36.dyn.columbia.edu (160.39.244.36), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 170 Bytes received
	dyn-160-39-242-69.dyn.columbia.edu (160.39.242.69), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 29.7kB received
	dyn-160-39-254-173.dyn.columbia.edu (160.39.254.173), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 92.7kB received
	dyn-160-39-247-117.dyn.columbia.edu (160.39.247.117), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.7kB received
	dyn-wireless-244-248.dyn.columbia.edu (160.39.244.248), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 22.0kB received
	dyn-wireless-246-171.dyn.columbia.edu (160.39.246.171), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.9kB received
	dyn-160-39-241-130.dyn.columbia.edu (160.39.241.130), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.1kB received
	dyn-160-39-242-207.dyn.columbia.edu (160.39.242.207), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 73.7kB received
	dyn-160-39-253-190.dyn.columbia.edu (160.39.253.190), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-242-12.dyn.columbia.edu (160.39.242.12), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 17.5kB received
	dyn-160-39-247-35.dyn.columbia.edu (160.39.247.35), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.5kB received
	dyn-160-39-255-146.dyn.columbia.edu (160.39.255.146), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-251-19.dyn.columbia.edu (160.39.251.19), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.7kB received
	dyn-160-39-251-118.dyn.columbia.edu (160.39.251.118), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 76.1kB received
	dyn-160-39-250-190.dyn.columbia.edu (160.39.250.190), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 76.2kB received
	dyn-160-39-247-226.dyn.columbia.edu (160.39.247.226), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 23.5kB received
	dyn-160-39-252-21.dyn.columbia.edu (160.39.252.21), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 20.8kB received
	dyn-160-39-241-70.dyn.columbia.edu (160.39.241.70), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 67.7kB received
	dyn-160-39-255-141.dyn.columbia.edu (160.39.255.141), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-254-31.dyn.columbia.edu (160.39.254.31), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-255-206.dyn.columbia.edu (160.39.255.206), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 147.5kB received
	dyn-160-39-255-29.dyn.columbia.edu (160.39.255.29), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.8kB received
	dyn-160-39-254-125.dyn.columbia.edu (160.39.254.125), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	dyn-160-39-252-88.dyn.columbia.edu (160.39.252.88), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.3kB received
	dyn-160-39-254-105.dyn.columbia.edu (160.39.254.105), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-241-117.dyn.columbia.edu (160.39.241.117), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 19.1kB received
	dyn-160-39-247-77.dyn.columbia.edu (160.39.247.77), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 474 Bytes received
	dyn-160-39-255-51.dyn.columbia.edu (160.39.255.51), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 18.5kB received
	dyn-160-39-254-113.dyn.columbia.edu (160.39.254.113), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.0kB received
	dyn-wireless-245-83.dyn.columbia.edu (160.39.245.83), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 16.1kB received
	capture-39-244-145.net.columbia.edu (10.39.244.145), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.4kB received
	dyn-160-39-250-78.dyn.columbia.edu (160.39.250.78), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-255-223.dyn.columbia.edu (160.39.255.223), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-254-10.dyn.columbia.edu (160.39.254.10), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 160 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-247-247.dyn.columbia.edu (160.39.247.247), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 17.1kB received
	dyn-wireless-245-127.dyn.columbia.edu (160.39.245.127), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 160 Bytes received
	dyn-160-39-242-21.dyn.columbia.edu (160.39.242.21), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 101 Bytes received
	dyn-160-39-253-246.dyn.columbia.edu (160.39.253.246), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.3kB received
	dyn-wireless-246-147.dyn.columbia.edu (160.39.246.147), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.2kB received
	dyn-160-39-254-217.dyn.columbia.edu (160.39.254.217), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 101 Bytes received
	dyn-160-39-242-108.dyn.columbia.edu (160.39.242.108), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 19.5kB received
	dyn-160-39-254-71.dyn.columbia.edu (160.39.254.71), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 60 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 25.5kB received
	dyn-160-39-251-114.dyn.columbia.edu (160.39.251.114), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 101 Bytes received
	dyn-wireless-244-97.dyn.columbia.edu (160.39.244.97), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 65.2kB received
	dyn-160-39-255-106.dyn.columbia.edu (160.39.255.106), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.4kB received
	dyn-wireless-244-221.dyn.columbia.edu (160.39.244.221), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-247-56.dyn.columbia.edu (160.39.247.56), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-253-183.dyn.columbia.edu (160.39.253.183), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.6kB received
	dyn-160-39-255-33.dyn.columbia.edu (160.39.255.33), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 89 Bytes received
	dyn-160-39-241-199.dyn.columbia.edu (160.39.241.199), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 101 Bytes received
	dyn-160-39-250-18.dyn.columbia.edu (160.39.250.18), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.8kB received
	dyn-160-39-251-41.dyn.columbia.edu (160.39.251.41), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-wireless-245-119.dyn.columbia.edu (160.39.245.119), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 87 Bytes received
	dyn-160-39-255-76.dyn.columbia.edu (160.39.255.76), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-247-183.dyn.columbia.edu (160.39.247.183), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 28.7kB received
	dyn-wireless-245-212.dyn.columbia.edu (160.39.245.212), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.2kB received
	dyn-160-39-252-222.dyn.columbia.edu (160.39.252.222), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.7kB received
	dyn-160-39-247-222.dyn.columbia.edu (160.39.247.222), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.6kB received
	dyn-160-39-243-188.dyn.columbia.edu (160.39.243.188), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-wireless-246-248.dyn.columbia.edu (160.39.246.248), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.9kB received
	dyn-160-39-251-31.dyn.columbia.edu (160.39.251.31), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 42.7kB received
	dyn-160-39-253-59.dyn.columbia.edu (160.39.253.59), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-wireless-246-56.dyn.columbia.edu (160.39.246.56), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.8kB received
	dyn-160-39-255-27.dyn.columbia.edu (160.39.255.27), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.0kB received
	dyn-wireless-244-70.dyn.columbia.edu (160.39.244.70), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.2kB received
	dyn-160-39-251-171.dyn.columbia.edu (160.39.251.171), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.2kB received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 462 Bytes received
	dyn-wireless-245-243.dyn.columbia.edu (160.39.245.243), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-253-129.dyn.columbia.edu (160.39.253.129), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.4kB received
	dyn-wireless-246-217.dyn.columbia.edu (160.39.246.217), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.3kB received
	dyn-wireless-244-174.dyn.columbia.edu (160.39.244.174), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-241-64.dyn.columbia.edu (160.39.241.64), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 323 Bytes received
	dyn-160-39-242-70.dyn.columbia.edu (160.39.242.70), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-243-95.dyn.columbia.edu (160.39.243.95), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 11.9kB received
	dyn-160-39-253-142.dyn.columbia.edu (160.39.253.142), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.3kB received
	dyn-wireless-246-197.dyn.columbia.edu (160.39.246.197), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 115 Bytes received
	dyn-160-39-253-38.dyn.columbia.edu (160.39.253.38), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 41 Bytes received
	dyn-160-39-250-145.dyn.columbia.edu (160.39.250.145), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 73 Bytes received
	dyn-160-39-250-38.dyn.columbia.edu (160.39.250.38), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.0kB received
	dyn-160-39-255-247.dyn.columbia.edu (160.39.255.247), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.5kB received
	dyn-160-39-252-121.dyn.columbia.edu (160.39.252.121), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.9kB received
	dyn-160-39-254-152.dyn.columbia.edu (160.39.254.152), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 29.4kB received
	dyn-160-39-252-164.dyn.columbia.edu (160.39.252.164), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-241-177.dyn.columbia.edu (160.39.241.177), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.7kB received
	dyn-160-39-252-69.dyn.columbia.edu (160.39.252.69), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-247-125.dyn.columbia.edu (160.39.247.125), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.0kB received
	dyn-160-39-252-181.dyn.columbia.edu (160.39.252.181), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.6kB received
	dyn-160-39-250-238.dyn.columbia.edu (160.39.250.238), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.2kB received
	dyn-160-39-242-249.dyn.columbia.edu (160.39.242.249), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.2kB received
	dyn-160-39-255-21.dyn.columbia.edu (160.39.255.21), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.2kB received
	dyn-wireless-244-135.dyn.columbia.edu (160.39.244.135), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 23.6kB received
	dyn-wireless-246-102.dyn.columbia.edu (160.39.246.102), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-252-144.dyn.columbia.edu (160.39.252.144), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 473 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 24.2kB received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.1kB received
	dyn-160-39-251-115.dyn.columbia.edu (160.39.251.115), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-247-92.dyn.columbia.edu (160.39.247.92), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-255-91.dyn.columbia.edu (160.39.255.91), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 20.8kB received
	dyn-160-39-243-229.dyn.columbia.edu (160.39.243.229), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 101 Bytes received
	dyn-160-39-252-192.dyn.columbia.edu (160.39.252.192), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.8kB received
	dyn-160-39-243-233.dyn.columbia.edu (160.39.243.233), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.9kB received
	dyn-160-39-253-79.dyn.columbia.edu (160.39.253.79), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.4kB received
	dyn-160-39-250-66.dyn.columbia.edu (160.39.250.66), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 23.7kB received
	dyn-160-39-252-59.dyn.columbia.edu (160.39.252.59), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 12.2kB received
	dyn-160-39-241-45.dyn.columbia.edu (160.39.241.45), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.7kB received
	dyn-160-39-243-241.dyn.columbia.edu (160.39.243.241), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.1kB received
	dyn-160-39-242-65.dyn.columbia.edu (160.39.242.65), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.5kB received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.7kB received
	dyn-160-39-247-144.dyn.columbia.edu (160.39.247.144), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	169.254.56.174 (169.254.56.174), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.4kB received
	dyn-wireless-245-148.dyn.columbia.edu (160.39.245.148), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.9kB received
	dyn-160-39-254-212.dyn.columbia.edu (160.39.254.212), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.1kB received
	dyn-160-39-243-184.dyn.columbia.edu (160.39.243.184), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 108 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 20.7kB received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.9kB received
	dyn-wireless-246-168.dyn.columbia.edu (160.39.246.168), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.6kB received
	dyn-160-39-241-67.dyn.columbia.edu (160.39.241.67), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 22.8kB received
	Macintosh-001CB308F1EB.local (169.254.211.40), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-251-34.dyn.columbia.edu (160.39.251.34), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.3kB received
	dyn-160-39-254-202.dyn.columbia.edu (160.39.254.202), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 179 Bytes received
	dyn-160-39-255-171.dyn.columbia.edu (160.39.255.171), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 95 Bytes received
	dyn-160-39-255-119.dyn.columbia.edu (160.39.255.119), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.8kB received
	dyn-wireless-244-232.dyn.columbia.edu (160.39.244.232), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.8kB received
	dyn-160-39-255-175.dyn.columbia.edu (160.39.255.175), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 428 Bytes received
	dyn-160-39-241-194.dyn.columbia.edu (160.39.241.194), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.3kB received
	dyn-wireless-246-35.dyn.columbia.edu (160.39.246.35), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 12.3kB received
	dyn-wireless-246-200.dyn.columbia.edu (160.39.246.200), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-247-218.dyn.columbia.edu (160.39.247.218), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 318 Bytes received
	iPhone-3.local (169.254.219.52), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 166 Bytes received
	dyn-wireless-246-85.dyn.columbia.edu (160.39.246.85), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-255-94.dyn.columbia.edu (160.39.255.94), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.0kB received
	dyn-160-39-241-173.dyn.columbia.edu (160.39.241.173), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 481 Bytes received
	169.254.32.110 (169.254.32.110), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 214 Bytes received
	dyn-wireless-245-105.dyn.columbia.edu (160.39.245.105), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.9kB received
	dyn-wireless-246-161.dyn.columbia.edu (160.39.246.161), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.8kB received
	Macintosh-001B63DB2922.local (169.254.138.146), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 360 Bytes received
	dyn-160-39-253-252.dyn.columbia.edu (160.39.253.252), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.7kB received
	dyn-160-39-250-64.dyn.columbia.edu (160.39.250.64), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.9kB received
	dyn-160-39-252-43.dyn.columbia.edu (160.39.252.43), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.4kB received
	dyn-160-39-242-73.dyn.columbia.edu (160.39.242.73), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.3kB received
	dyn-160-39-251-223.dyn.columbia.edu (160.39.251.223), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.2kB received
	dyn-160-39-250-20.dyn.columbia.edu (160.39.250.20), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-241-246.dyn.columbia.edu (160.39.241.246), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.0kB received
	Macintosh-001CB3072D0A.local (169.254.143.140), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 258 Bytes received
	dyn-160-39-252-218.dyn.columbia.edu (160.39.252.218), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 130 Bytes received
	dyn-160-39-254-185.dyn.columbia.edu (160.39.254.185), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.0kB received
	169.254.207.93 (169.254.207.93), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.9kB received
	dyn-160-39-252-148.dyn.columbia.edu (160.39.252.148), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.1kB received
	dyn-160-39-247-228.dyn.columbia.edu (160.39.247.228), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	169.254.207.93 (169.254.207.93), Port 49786 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 180 Bytes received
	dyn-160-39-251-182.dyn.columbia.edu (160.39.251.182), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.7kB received
	dyn-160-39-251-146.dyn.columbia.edu (160.39.251.146), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-250-50.dyn.columbia.edu (160.39.250.50), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.3kB received
	dyn-160-39-250-159.dyn.columbia.edu (160.39.250.159), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 22.5kB received
	dyn-160-39-243-138.dyn.columbia.edu (160.39.243.138), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 163 Bytes received
	dyn-160-39-241-190.dyn.columbia.edu (160.39.241.190), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-252-187.dyn.columbia.edu (160.39.252.187), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 64 Bytes received
	dyn-160-39-242-177.dyn.columbia.edu (160.39.242.177), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.6kB received
	dyn-160-39-252-242.dyn.columbia.edu (160.39.252.242), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-wireless-245-107.dyn.columbia.edu (160.39.245.107), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.1kB received
	dyn-160-39-242-233.dyn.columbia.edu (160.39.242.233), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.3kB received
	dyn-160-39-242-179.dyn.columbia.edu (160.39.242.179), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-252-216.dyn.columbia.edu (160.39.252.216), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 447 Bytes received
	dyn-wireless-245-195.dyn.columbia.edu (160.39.245.195), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.4kB received
	dyn-160-39-252-32.dyn.columbia.edu (160.39.252.32), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-254-123.dyn.columbia.edu (160.39.254.123), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 97 Bytes received
	dyn-160-39-253-62.dyn.columbia.edu (160.39.253.62), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 19.6kB received
	dyn-wireless-246-175.dyn.columbia.edu (160.39.246.175), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 311 Bytes received
	dyn-160-39-243-218.dyn.columbia.edu (160.39.243.218), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.4kB received
	dyn-160-39-254-227.dyn.columbia.edu (160.39.254.227), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 29.1kB received
	dyn-160-39-242-168.dyn.columbia.edu (160.39.242.168), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.1kB received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 19.5kB received
	dyn-160-39-241-46.dyn.columbia.edu (160.39.241.46), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-252-129.dyn.columbia.edu (160.39.252.129), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.6kB received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59719 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-253-242.dyn.columbia.edu (160.39.253.242), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 40.3kB received
	dyn-160-39-241-50.dyn.columbia.edu (160.39.241.50), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.6kB received
	Gianni.local (169.254.223.124), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 362 Bytes received
	dyn-160-39-252-234.dyn.columbia.edu (160.39.252.234), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 290 Bytes received
	dyn-160-39-243-241.dyn.columbia.edu (160.39.243.241), Port 55283 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 180 Bytes received
	dyn-160-39-243-241.dyn.columbia.edu (160.39.243.241), Port 55293 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 180 Bytes received
	dyn-160-39-243-241.dyn.columbia.edu (160.39.243.241), Port 55292 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 180 Bytes received
	dyn-wireless-245-68.dyn.columbia.edu (160.39.245.68), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-243-225.dyn.columbia.edu (160.39.243.225), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.8kB received
	dyn-160-39-243-29.dyn.columbia.edu (160.39.243.29), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-241-166.dyn.columbia.edu (160.39.241.166), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.1kB received
	dyn-160-39-241-11.dyn.columbia.edu (160.39.241.11), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 20.5kB received
	dyn-160-39-254-41.dyn.columbia.edu (160.39.254.41), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.8kB received
	dyn-160-39-254-41.dyn.columbia.edu (160.39.254.41), Port 49257 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-wireless-244-199.dyn.columbia.edu (160.39.244.199), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 335 Bytes received
	dyn-160-39-252-192.dyn.columbia.edu (160.39.252.192), Port 56901 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-252-192.dyn.columbia.edu (160.39.252.192), Port 56900 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-243-169.dyn.columbia.edu (160.39.243.169), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.3kB received
	dyn-160-39-252-192.dyn.columbia.edu (160.39.252.192), Port 56911 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-252-192.dyn.columbia.edu (160.39.252.192), Port 56910 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-wireless-244-29.dyn.columbia.edu (160.39.244.29), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 95 Bytes received
	dyn-160-39-250-177.dyn.columbia.edu (160.39.250.177), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-251-101.dyn.columbia.edu (160.39.251.101), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-247-122.dyn.columbia.edu (160.39.247.122), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 146 Bytes received
	dyn-wireless-245-168.dyn.columbia.edu (160.39.245.168), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-247-111.dyn.columbia.edu (160.39.247.111), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-wireless-245-231.dyn.columbia.edu (160.39.245.231), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 495 Bytes received
	dyn-160-39-241-52.dyn.columbia.edu (160.39.241.52), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	PC113824047319.local (169.254.26.167), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 175 Bytes received
	dyn-160-39-247-178.dyn.columbia.edu (160.39.247.178), Port 50760 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 270 Bytes received
	dyn-160-39-247-178.dyn.columbia.edu (160.39.247.178), Port 50763 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-242-48.dyn.columbia.edu (160.39.242.48), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-wireless-246-187.dyn.columbia.edu (160.39.246.187), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-247-247.dyn.columbia.edu (160.39.247.247), Port 51741 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 360 Bytes received
	dyn-160-39-247-247.dyn.columbia.edu (160.39.247.247), Port 51743 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-wireless-244-63.dyn.columbia.edu (160.39.244.63), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-253-186.dyn.columbia.edu (160.39.253.186), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 17.0kB received
	dyn-160-39-255-170.dyn.columbia.edu (160.39.255.170), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-252-71.dyn.columbia.edu (160.39.252.71), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-wireless-246-27.dyn.columbia.edu (160.39.246.27), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 76 Bytes received
	dyn-160-39-247-43.dyn.columbia.edu (160.39.247.43), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-wireless-246-220.dyn.columbia.edu (160.39.246.220), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-252-161.dyn.columbia.edu (160.39.252.161), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 309 Bytes received
	dyn-160-39-252-133.dyn.columbia.edu (160.39.252.133), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 14.6kB received
	dyn-160-39-241-71.dyn.columbia.edu (160.39.241.71), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.7kB received
	dyn-160-39-252-243.dyn.columbia.edu (160.39.252.243), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.6kB received
	dyn-160-39-250-30.dyn.columbia.edu (160.39.250.30), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.1kB received
	dyn-160-39-243-147.dyn.columbia.edu (160.39.243.147), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 94 Bytes received
	dyn-160-39-247-132.dyn.columbia.edu (160.39.247.132), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.2kB received
	dyn-wireless-246-70.dyn.columbia.edu (160.39.246.70), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 11.5kB received
	dyn-wireless-246-53.dyn.columbia.edu (160.39.246.53), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.6kB received
	iPhone-29.local (169.254.63.242), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-254-47.dyn.columbia.edu (160.39.254.47), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 446 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.7kB received
	dyn-160-39-254-41.dyn.columbia.edu (160.39.254.41), Port 49201 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-wireless-245-252.dyn.columbia.edu (160.39.245.252), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-254-41.dyn.columbia.edu (160.39.254.41), Port 49199 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 270 Bytes received
	dyn-160-39-251-82.dyn.columbia.edu (160.39.251.82), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-252-70.dyn.columbia.edu (160.39.252.70), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 266 Bytes received
	dyn-160-39-251-29.dyn.columbia.edu (160.39.251.29), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 362 Bytes received
	dyn-160-39-242-253.dyn.columbia.edu (160.39.242.253), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-110.dyn.columbia.edu (160.39.255.110), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-253-119.dyn.columbia.edu (160.39.253.119), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	169.254.232.210 (169.254.232.210), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-99.dyn.columbia.edu (160.39.243.99), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.9kB received
	dyn-160-39-241-28.dyn.columbia.edu (160.39.241.28), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 232 Bytes received
	dyn-wireless-246-61.dyn.columbia.edu (160.39.246.61), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-247-157.dyn.columbia.edu (160.39.247.157), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-253-34.dyn.columbia.edu (160.39.253.34), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 51.5kB received
	dyn-160-39-241-205.dyn.columbia.edu (160.39.241.205), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 155 Bytes received
	dyn-wireless-244-43.dyn.columbia.edu (160.39.244.43), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-wireless-245-84.dyn.columbia.edu (160.39.245.84), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 405 Bytes received
	dyn-160-39-251-248.dyn.columbia.edu (160.39.251.248), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 405 Bytes received
	dyn-160-39-241-220.dyn.columbia.edu (160.39.241.220), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.1kB received
	dyn-160-39-243-17.dyn.columbia.edu (160.39.243.17), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 17.0kB received
	dyn-160-39-241-134.dyn.columbia.edu (160.39.241.134), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-252-30.dyn.columbia.edu (160.39.252.30), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-254-53.dyn.columbia.edu (160.39.254.53), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	169.254.142.27 (169.254.142.27), Port 52231 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 135 Bytes received
	dyn-wireless-244-150.dyn.columbia.edu (160.39.244.150), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 181 Bytes received
	dyn-160-39-252-225.dyn.columbia.edu (160.39.252.225), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.2kB received
	dyn-160-39-252-140.dyn.columbia.edu (160.39.252.140), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 154 Bytes received
	dyn-160-39-251-226.dyn.columbia.edu (160.39.251.226), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 293 Bytes received
	dyn-160-39-242-74.dyn.columbia.edu (160.39.242.74), Port 50186 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-247-20.dyn.columbia.edu (160.39.247.20), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-253-82.dyn.columbia.edu (160.39.253.82), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.4kB received
	dyn-160-39-255-11.dyn.columbia.edu (160.39.255.11), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 15.6kB received
	dyn-wireless-244-203.dyn.columbia.edu (160.39.244.203), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 133.8kB received
	dyn-160-39-255-73.dyn.columbia.edu (160.39.255.73), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-wireless-245-112.dyn.columbia.edu (160.39.245.112), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 28.1kB received
	dyn-160-39-254-175.dyn.columbia.edu (160.39.254.175), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 143 Bytes received
	dyn-160-39-251-222.dyn.columbia.edu (160.39.251.222), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.2kB received
	dyn-160-39-241-186.dyn.columbia.edu (160.39.241.186), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-241-236.dyn.columbia.edu (160.39.241.236), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-241-141.dyn.columbia.edu (160.39.241.141), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.8kB received
	dyn-160-39-247-198.dyn.columbia.edu (160.39.247.198), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.9kB received
	dyn-160-39-247-33.dyn.columbia.edu (160.39.247.33), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 96 Bytes received
	dyn-160-39-251-189.dyn.columbia.edu (160.39.251.189), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 10.8kB received
	Victoria.local (169.254.133.150), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.6kB received
	dyn-160-39-241-60.dyn.columbia.edu (160.39.241.60), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.7kB received
	dyn-160-39-252-19.dyn.columbia.edu (160.39.252.19), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	dyn-160-39-247-101.dyn.columbia.edu (160.39.247.101), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.3kB received
	dyn-160-39-255-61.dyn.columbia.edu (160.39.255.61), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.8kB received
	169.254.142.27 (169.254.142.27), Port 5353 (mdns), Protocol 17 (UDP), 0.6kB sent, 4.8kB received
	169.254.131.122 (169.254.131.122), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-243-252.dyn.columbia.edu (160.39.243.252), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	169.254.131.122 (169.254.131.122), Port 49698 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 138 Bytes received
	dyn-wireless-245-81.dyn.columbia.edu (160.39.245.81), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	169.254.142.27 (169.254.142.27), Port 52217 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 135 Bytes received
	dyn-160-39-242-158.dyn.columbia.edu (160.39.242.158), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	RENAPC.local (169.254.251.219), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 1.3kB received
	dyn-160-39-241-106.dyn.columbia.edu (160.39.241.106), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.6kB received
	dyn-wireless-245-163.dyn.columbia.edu (160.39.245.163), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 34.8kB received
	dyn-160-39-241-81.dyn.columbia.edu (160.39.241.81), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 96 Bytes received
	dyn-160-39-243-237.dyn.columbia.edu (160.39.243.237), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 422 Bytes received
	dyn-160-39-253-69.dyn.columbia.edu (160.39.253.69), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.4kB received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.4kB received
	dyn-160-39-252-143.dyn.columbia.edu (160.39.252.143), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 22.1kB received
	dyn-160-39-254-146.dyn.columbia.edu (160.39.254.146), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	dyn-wireless-245-47.dyn.columbia.edu (160.39.245.47), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 446 Bytes received
	dyn-160-39-241-188.dyn.columbia.edu (160.39.241.188), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-241-99.dyn.columbia.edu (160.39.241.99), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-242-30.dyn.columbia.edu (160.39.242.30), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 0.6kB received
	dyn-160-39-242-66.dyn.columbia.edu (160.39.242.66), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 438 Bytes received
	dyn-wireless-244-178.dyn.columbia.edu (160.39.244.178), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.3kB received
	dyn-160-39-243-80.dyn.columbia.edu (160.39.243.80), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.5kB received
	169.254.243.188 (169.254.243.188), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-wireless-246-195.dyn.columbia.edu (160.39.246.195), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 69 Bytes received
	dyn-160-39-243-190.dyn.columbia.edu (160.39.243.190), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	169.254.171.80 (169.254.171.80), Port 50522 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	169.254.171.80 (169.254.171.80), Port 50521 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 45 Bytes received
	dyn-160-39-253-141.dyn.columbia.edu (160.39.253.141), Port 53164 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 180 Bytes received
	dyn-160-39-253-141.dyn.columbia.edu (160.39.253.141), Port 53167 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	169.254.139.91 (169.254.139.91), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-wireless-245-71.dyn.columbia.edu (160.39.245.71), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 15.6kB received
	dyn-wireless-246-146.dyn.columbia.edu (160.39.246.146), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-wireless-244-49.dyn.columbia.edu (160.39.244.49), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 16.8kB received
	dyn-160-39-254-93.dyn.columbia.edu (160.39.254.93), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	192.168.0.5 (192.168.0.5), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 244 Bytes received
	dyn-160-39-242-65.dyn.columbia.edu (160.39.242.65), Port 52445 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	169.254.215.187 (169.254.215.187), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-242-65.dyn.columbia.edu (160.39.242.65), Port 52430 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-254-235.dyn.columbia.edu (160.39.254.235), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.5kB received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-253-212.dyn.columbia.edu (160.39.253.212), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.0kB received
	dyn-160-39-254-157.dyn.columbia.edu (160.39.254.157), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-251-206.dyn.columbia.edu (160.39.251.206), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-250-183.dyn.columbia.edu (160.39.250.183), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-wireless-246-45.dyn.columbia.edu (160.39.246.45), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.2kB received
	dyn-160-39-250-102.dyn.columbia.edu (160.39.250.102), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.8kB received
	dyn-160-39-241-183.dyn.columbia.edu (160.39.241.183), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 213 Bytes received
	dyn-wireless-245-246.dyn.columbia.edu (160.39.245.246), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.2kB received
	dyn-160-39-255-243.dyn.columbia.edu (160.39.255.243), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-254-167.dyn.columbia.edu (160.39.254.167), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 7.7kB received
	dyn-wireless-244-95.dyn.columbia.edu (160.39.244.95), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 128 Bytes received
	dyn-160-39-253-141.dyn.columbia.edu (160.39.253.141), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.1kB received
	Macintosh-001CB370773E.local (169.254.216.251), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 298 Bytes received
	dyn-wireless-244-77.dyn.columbia.edu (160.39.244.77), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-wireless-245-53.dyn.columbia.edu (160.39.245.53), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 12.7kB received
	dyn-160-39-243-79.dyn.columbia.edu (160.39.243.79), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 466 Bytes received
	dyn-160-39-241-227.dyn.columbia.edu (160.39.241.227), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 496 Bytes received
	dyn-160-39-255-158.dyn.columbia.edu (160.39.255.158), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 8.5kB received
	dyn-ec-195-52.dyn.columbia.edu (160.39.195.52), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 47.3kB received
	dyn-160-39-242-161.dyn.columbia.edu (160.39.242.161), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 323 Bytes received
	dyn-wireless-246-241.dyn.columbia.edu (160.39.246.241), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.0kB received
	dyn-160-39-253-153.dyn.columbia.edu (160.39.253.153), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 65 Bytes received
	169.254.46.255 (169.254.46.255), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 48 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.6kB received
	D610C35GS81.local (169.254.73.136), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 427 Bytes received
	169.254.142.27 (169.254.142.27), Port 52195 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 180 Bytes received
	dyn-160-39-242-120.dyn.columbia.edu (160.39.242.120), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-241-139.dyn.columbia.edu (160.39.241.139), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 17.1kB received
	dyn-wireless-245-82.dyn.columbia.edu (160.39.245.82), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 446 Bytes received
	dyn-160-39-250-236.dyn.columbia.edu (160.39.250.236), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-252-239.dyn.columbia.edu (160.39.252.239), Port 53695 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-253-211.dyn.columbia.edu (160.39.253.211), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 53 Bytes received
	dyn-160-39-252-239.dyn.columbia.edu (160.39.252.239), Port 53679 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-252-239.dyn.columbia.edu (160.39.252.239), Port 53678 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-252-239.dyn.columbia.edu (160.39.252.239), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.7kB received
	dyn-160-39-251-175.dyn.columbia.edu (160.39.251.175), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 372 Bytes received
	169.254.167.26 (169.254.167.26), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 6.3kB received
	dyn-160-39-250-159.dyn.columbia.edu (160.39.250.159), Port 49772 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-250-159.dyn.columbia.edu (160.39.250.159), Port 49771 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-250-159.dyn.columbia.edu (160.39.250.159), Port 49769 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 270 Bytes received
	Macintosh-001B63E8D0B8.local (169.254.82.35), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-242-6.dyn.columbia.edu (160.39.242.6), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.8kB received
	dyn-160-39-253-137.dyn.columbia.edu (160.39.253.137), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.5kB received
	dyn-160-39-254-124.dyn.columbia.edu (160.39.254.124), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-242-13.dyn.columbia.edu (160.39.242.13), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.4kB received
	dyn-160-39-242-208.dyn.columbia.edu (160.39.242.208), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-243-142.dyn.columbia.edu (160.39.243.142), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-255-105.dyn.columbia.edu (160.39.255.105), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.7kB received
	169.254.215.187 (169.254.215.187), Port 54114 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 46 Bytes received
	169.254.215.187 (169.254.215.187), Port 54112 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 92 Bytes received
	dyn-160-39-242-100.dyn.columbia.edu (160.39.242.100), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.0kB received
	dyn-wireless-244-164.dyn.columbia.edu (160.39.244.164), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-254-49.dyn.columbia.edu (160.39.254.49), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 94 Bytes received
	dyn-wireless-246-211.dyn.columbia.edu (160.39.246.211), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-252-97.dyn.columbia.edu (160.39.252.97), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-250-139.dyn.columbia.edu (160.39.250.139), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 493 Bytes received
	Macintosh-001CB301506E.local (169.254.123.34), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 318 Bytes received
	Anthony.local (169.254.74.215), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 82 Bytes received
	dyn-160-39-243-201.dyn.columbia.edu (160.39.243.201), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	mob-117-191.barnard.columbia.edu (160.39.117.191), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-250-205.dyn.columbia.edu (160.39.250.205), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.8kB received
	dyn-160-39-252-203.dyn.columbia.edu (160.39.252.203), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 15.8kB received
	dyn-160-39-247-47.dyn.columbia.edu (160.39.247.47), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 116 Bytes received
	169.254.215.187 (169.254.215.187), Port 54106 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 46 Bytes received
	dyn-160-39-241-4.dyn.columbia.edu (160.39.241.4), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 4.3kB received
	dyn-160-39-243-117.dyn.columbia.edu (160.39.243.117), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.8kB received
	dyn-wireless-246-96.dyn.columbia.edu (160.39.246.96), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-255-120.dyn.columbia.edu (160.39.255.120), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-252-27.dyn.columbia.edu (160.39.252.27), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-243-58.dyn.columbia.edu (160.39.243.58), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.1kB received
	dyn-160-39-243-57.dyn.columbia.edu (160.39.243.57), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-wireless-244-244.dyn.columbia.edu (160.39.244.244), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.6kB received
	dyn-160-39-251-73.dyn.columbia.edu (160.39.251.73), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 13.3kB received
	dyn-wireless-244-226.dyn.columbia.edu (160.39.244.226), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 9.0kB received
	dyn-160-39-250-13.dyn.columbia.edu (160.39.250.13), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-wireless-245-42.dyn.columbia.edu (160.39.245.42), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.2kB received
	dyn-160-39-254-46.dyn.columbia.edu (160.39.254.46), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-253-244.dyn.columbia.edu (160.39.253.244), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	iPhone-250.local (169.254.215.52), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 434 Bytes received
	dyn-wireless-244-31.dyn.columbia.edu (160.39.244.31), Port 58483 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 270 Bytes received
	dyn-wireless-244-31.dyn.columbia.edu (160.39.244.31), Port 58488 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-252-84.dyn.columbia.edu (160.39.252.84), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-225.dyn.columbia.edu (160.39.255.225), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 2.9kB received
	dyn-wireless-245-204.dyn.columbia.edu (160.39.245.204), Port 57761 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-wireless-245-204.dyn.columbia.edu (160.39.245.204), Port 57760 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 90 Bytes received
	dyn-160-39-251-144.dyn.columbia.edu (160.39.251.144), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 96 Bytes received
	dyn-160-39-252-28.dyn.columbia.edu (160.39.252.28), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-255-87.dyn.columbia.edu (160.39.255.87), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-247-154.dyn.columbia.edu (160.39.247.154), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-242-223.dyn.columbia.edu (160.39.242.223), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.9kB received
	dyn-160-39-243-168.dyn.columbia.edu (160.39.243.168), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 95 Bytes received
	capture-39-244-16.net.columbia.edu (10.39.244.16), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 84 Bytes received
	dyn-160-39-253-207.dyn.columbia.edu (160.39.253.207), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	169.254.114.206 (169.254.114.206), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 48 Bytes received
	dyn-160-39-241-23.dyn.columbia.edu (160.39.241.23), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 446 Bytes received
	dyn-wireless-246-228.dyn.columbia.edu (160.39.246.228), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 151 Bytes received
	dyn-wal-177-106.dyn.columbia.edu (160.39.177.106), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 275 Bytes received
	dyn-160-39-253-206.dyn.columbia.edu (160.39.253.206), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 371 Bytes received
	dyn-160-39-250-151.dyn.columbia.edu (160.39.250.151), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 319 Bytes received
	dyn-160-39-247-205.dyn.columbia.edu (160.39.247.205), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 5.9kB received
	dyn-160-39-255-125.dyn.columbia.edu (160.39.255.125), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 64 Bytes received
	dyn-160-39-243-239.dyn.columbia.edu (160.39.243.239), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-243-124.dyn.columbia.edu (160.39.243.124), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 64 Bytes received
	dyn-160-39-243-96.dyn.columbia.edu (160.39.243.96), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 33 Bytes received
	dyn-160-39-243-59.dyn.columbia.edu (160.39.243.59), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 479 Bytes received
	dyn-160-39-242-40.dyn.columbia.edu (160.39.242.40), Port 5353 (mdns), Protocol 17 (UDP), 294 Bytes sent, 0.6kB received
	dyn-wireless-245-29.dyn.columbia.edu (160.39.245.29), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 146 Bytes received
	dyn-160-39-255-236.dyn.columbia.edu (160.39.255.236), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-250-93.dyn.columbia.edu (160.39.250.93), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-250-34.dyn.columbia.edu (160.39.250.34), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 97 Bytes received
	dyn-wireless-245-151.dyn.columbia.edu (160.39.245.151), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 84 Bytes received
	dyn-160-39-251-67.dyn.columbia.edu (160.39.251.67), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 82 Bytes received
	dyn-160-39-252-245.dyn.columbia.edu (160.39.252.245), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 141 Bytes received
	dyn-160-39-241-11.dyn.columbia.edu (160.39.241.11), Port 51562 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 270 Bytes received
	dyn-160-39-247-58.dyn.columbia.edu (160.39.247.58), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-wireless-246-80.dyn.columbia.edu (160.39.246.80), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	10.0.1.1 (10.0.1.1), Port 53 (domain), Protocol 17 (UDP), 507 Bytes sent, 233 Bytes received
	10.0.1.198 (10.0.1.198), Port 5353 (mdns), Protocol 17 (UDP), 0 Bytes sent, 76 Bytes received
</pre>
</div>

and for nmbd:

<div style="height: 20em; overflow: scroll;">
  <pre>
Connection report for process: nmbd (/usr/sbin/nmbd)
Total: 8.7kB sent, 442.9kB received
	dyn-160-39-254-144.dyn.columbia.edu (160.39.254.144), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 7.6kB received
	dyn-160-39-243-130.dyn.columbia.edu (160.39.243.130), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 4.4kB received
	dyn-160-39-255-143.dyn.columbia.edu (160.39.255.143), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-254-14.dyn.columbia.edu (160.39.254.14), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-255-113.dyn.columbia.edu (160.39.255.113), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-29.dyn.columbia.edu (160.39.254.29), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-242-86.dyn.columbia.edu (160.39.242.86), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-87.dyn.columbia.edu (160.39.255.87), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 12.5kB received
	dyn-160-39-242-150.dyn.columbia.edu (160.39.242.150), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 8.6kB received
	dyn-160-39-243-86.dyn.columbia.edu (160.39.243.86), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59773 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-168.dyn.columbia.edu (160.39.254.168), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-243-92.dyn.columbia.edu (160.39.243.92), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-242-89.dyn.columbia.edu (160.39.242.89), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 49247 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 49246 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-168.dyn.columbia.edu (160.39.254.168), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 174 Bytes received
	dyn-160-39-242-150.dyn.columbia.edu (160.39.242.150), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 8.8kB received
	dyn-160-39-243-92.dyn.columbia.edu (160.39.243.92), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-242-30.dyn.columbia.edu (160.39.242.30), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-243-204.dyn.columbia.edu (160.39.243.204), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-126.dyn.columbia.edu (160.39.254.126), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.2kB received
	dyn-160-39-242-183.dyn.columbia.edu (160.39.242.183), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 16.1kB received
	dyn-160-39-255-182.dyn.columbia.edu (160.39.255.182), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.6kB received
	dyn-160-39-255-113.dyn.columbia.edu (160.39.255.113), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-243-130.dyn.columbia.edu (160.39.243.130), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.2kB received
	dyn-160-39-255-103.dyn.columbia.edu (160.39.255.103), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 9.0kB received
	dyn-160-39-242-239.dyn.columbia.edu (160.39.242.239), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 17.7kB received
	lk7e8504.chemistry.columbia.edu (128.59.112.52), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 5.1kB received
	dyn-160-39-242-44.dyn.columbia.edu (160.39.242.44), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 4.1kB received
	160.39.243.255 (160.39.243.255), Port 138 (netbios-dgm), Protocol 17 (UDP), 3.1kB sent, 0 Bytes received
	lime.cc.columbia.edu (128.59.59.119), Port 137 (netbios-ns), Protocol 17 (UDP), 0.5kB sent, 0.5kB received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.1kB received
	dyn-160-39-242-103.dyn.columbia.edu (160.39.242.103), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-242-103.dyn.columbia.edu (160.39.242.103), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-243-240.dyn.columbia.edu (160.39.243.240), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-191.dyn.columbia.edu (160.39.254.191), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-242-152.dyn.columbia.edu (160.39.242.152), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.3kB received
	dyn-160-39-243-240.dyn.columbia.edu (160.39.243.240), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-255-143.dyn.columbia.edu (160.39.255.143), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 14.2kB received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55974 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55973 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55972 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-41.dyn.columbia.edu (160.39.254.41), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-254-165.dyn.columbia.edu (160.39.254.165), Port 50619 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-165.dyn.columbia.edu (160.39.254.165), Port 50624 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-41.dyn.columbia.edu (160.39.254.41), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-254-165.dyn.columbia.edu (160.39.254.165), Port 50617 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-243-86.dyn.columbia.edu (160.39.243.86), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 375 Bytes received
	dyn-160-39-242-87.dyn.columbia.edu (160.39.242.87), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-243-26.dyn.columbia.edu (160.39.243.26), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.9kB received
	dyn-160-39-243-171.dyn.columbia.edu (160.39.243.171), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.6kB received
	dyn-160-39-242-207.dyn.columbia.edu (160.39.242.207), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.5kB received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-44.dyn.columbia.edu (160.39.255.44), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-94.dyn.columbia.edu (160.39.255.94), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-53.dyn.columbia.edu (160.39.254.53), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-243-51.dyn.columbia.edu (160.39.243.51), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-242-158.dyn.columbia.edu (160.39.242.158), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 59295 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-92.dyn.columbia.edu (160.39.255.92), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52512 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49542 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49541 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49540 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59770 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56794 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-232.dyn.columbia.edu (160.39.242.232), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-243-216.dyn.columbia.edu (160.39.243.216), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56786 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56793 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-76.dyn.columbia.edu (160.39.255.76), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.8kB received
	dyn-160-39-242-241.dyn.columbia.edu (160.39.242.241), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 4.3kB received
	dyn-160-39-242-57.dyn.columbia.edu (160.39.242.57), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 10.3kB received
	dyn-160-39-254-185.dyn.columbia.edu (160.39.254.185), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-242-89.dyn.columbia.edu (160.39.242.89), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-242-241.dyn.columbia.edu (160.39.242.241), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-243-77.dyn.columbia.edu (160.39.243.77), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-187.dyn.columbia.edu (160.39.254.187), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.8kB received
	dyn-160-39-254-64.dyn.columbia.edu (160.39.254.64), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	dyn-160-39-242-250.dyn.columbia.edu (160.39.242.250), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.8kB received
	dyn-160-39-254-171.dyn.columbia.edu (160.39.254.171), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-254-143.dyn.columbia.edu (160.39.254.143), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.7kB received
	dyn-160-39-243-3.dyn.columbia.edu (160.39.243.3), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.9kB received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-254-101.dyn.columbia.edu (160.39.254.101), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-242-90.dyn.columbia.edu (160.39.242.90), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-242-232.dyn.columbia.edu (160.39.242.232), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 375 Bytes received
	dyn-160-39-242-207.dyn.columbia.edu (160.39.242.207), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-81.dyn.columbia.edu (160.39.254.81), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-242-90.dyn.columbia.edu (160.39.242.90), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-255-32.dyn.columbia.edu (160.39.255.32), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-242-74.dyn.columbia.edu (160.39.242.74), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.4kB received
	dyn-160-39-255-146.dyn.columbia.edu (160.39.255.146), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-243-155.dyn.columbia.edu (160.39.243.155), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-242-250.dyn.columbia.edu (160.39.242.250), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-255-101.dyn.columbia.edu (160.39.255.101), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.8kB received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-254-18.dyn.columbia.edu (160.39.254.18), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.4kB received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-254-212.dyn.columbia.edu (160.39.254.212), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-255-44.dyn.columbia.edu (160.39.255.44), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-255-29.dyn.columbia.edu (160.39.255.29), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 4.2kB received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.2kB received
	dyn-160-39-255-223.dyn.columbia.edu (160.39.255.223), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-243-152.dyn.columbia.edu (160.39.243.152), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-243-126.dyn.columbia.edu (160.39.243.126), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.0kB received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-242-87.dyn.columbia.edu (160.39.242.87), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.8kB received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 200 Bytes received
	dyn-160-39-243-155.dyn.columbia.edu (160.39.243.155), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-243-98.dyn.columbia.edu (160.39.243.98), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.9kB received
	dyn-160-39-243-98.dyn.columbia.edu (160.39.243.98), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-255-245.dyn.columbia.edu (160.39.255.245), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-254-173.dyn.columbia.edu (160.39.254.173), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.6kB received
	dyn-160-39-254-18.dyn.columbia.edu (160.39.254.18), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-255-112.dyn.columbia.edu (160.39.255.112), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 412 Bytes received
	dyn-160-39-255-157.dyn.columbia.edu (160.39.255.157), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 417 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51125 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.5kB received
	dyn-160-39-243-226.dyn.columbia.edu (160.39.243.226), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59767 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-243-82.dyn.columbia.edu (160.39.243.82), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 340 Bytes received
	dyn-160-39-243-234.dyn.columbia.edu (160.39.243.234), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-242-25.dyn.columbia.edu (160.39.242.25), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-242-136.dyn.columbia.edu (160.39.242.136), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.4kB received
	dyn-160-39-242-159.dyn.columbia.edu (160.39.242.159), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 4.4kB received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-255-188.dyn.columbia.edu (160.39.255.188), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-243-171.dyn.columbia.edu (160.39.243.171), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.6kB received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-254-126.dyn.columbia.edu (160.39.254.126), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-255-32.dyn.columbia.edu (160.39.255.32), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-254-29.dyn.columbia.edu (160.39.254.29), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 221 Bytes received
	dyn-160-39-242-25.dyn.columbia.edu (160.39.242.25), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 11.9kB received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-151.dyn.columbia.edu (160.39.243.151), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 50358 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-135.dyn.columbia.edu (160.39.242.135), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-254-144.dyn.columbia.edu (160.39.254.144), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-243-47.dyn.columbia.edu (160.39.243.47), Port 50270 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-26.dyn.columbia.edu (160.39.243.26), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-255-180.dyn.columbia.edu (160.39.255.180), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 200 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-255-106.dyn.columbia.edu (160.39.255.106), Port 62842 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59764 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-249.dyn.columbia.edu (160.39.255.249), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51123 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-212.dyn.columbia.edu (160.39.254.212), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55789 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-72.dyn.columbia.edu (160.39.242.72), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 407 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.0kB received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55786 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62713 (unnamed), Protocol 17 (UDP), 186 Bytes sent, 150 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62718 (unnamed), Protocol 17 (UDP), 186 Bytes sent, 150 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53824 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53823 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53822 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53828 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53827 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53826 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53825 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-152.dyn.columbia.edu (160.39.242.152), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-242-206.dyn.columbia.edu (160.39.242.206), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 250 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62717 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62716 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62715 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62714 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62719 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-206.dyn.columbia.edu (160.39.242.206), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 348 Bytes received
	dyn-160-39-255-29.dyn.columbia.edu (160.39.255.29), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 200 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53214 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 2.1kB received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55787 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-152.dyn.columbia.edu (160.39.243.152), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-39.dyn.columbia.edu (160.39.243.39), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62712 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55788 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-178.dyn.columbia.edu (160.39.243.178), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-242-74.dyn.columbia.edu (160.39.242.74), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-255-223.dyn.columbia.edu (160.39.255.223), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 200 Bytes received
	dyn-160-39-243-35.dyn.columbia.edu (160.39.243.35), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.7kB received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49646 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49645 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-128.dyn.columbia.edu (160.39.243.128), Port 62700 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-94.dyn.columbia.edu (160.39.242.94), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-243-178.dyn.columbia.edu (160.39.243.178), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-242-246.dyn.columbia.edu (160.39.242.246), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.8kB received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50554 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50553 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50552 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-94.dyn.columbia.edu (160.39.242.94), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-90.dyn.columbia.edu (160.39.255.90), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-246.dyn.columbia.edu (160.39.242.246), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54238 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-44.dyn.columbia.edu (160.39.242.44), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-255-21.dyn.columbia.edu (160.39.255.21), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54237 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-121.dyn.columbia.edu (160.39.243.121), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 5.8kB received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-150.dyn.columbia.edu (160.39.243.150), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57470 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57471 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54240 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54241 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-188.dyn.columbia.edu (160.39.255.188), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59761 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-29.dyn.columbia.edu (160.39.243.29), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 18.0kB received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55785 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-81.dyn.columbia.edu (160.39.254.81), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-255-106.dyn.columbia.edu (160.39.255.106), Port 62836 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-103.dyn.columbia.edu (160.39.255.103), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53821 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-244.dyn.columbia.edu (160.39.254.244), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 500 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50037 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50038 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-17.dyn.columbia.edu (160.39.242.17), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.8kB received
	dyn-160-39-243-87.dyn.columbia.edu (160.39.243.87), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.2kB received
	dyn-160-39-243-212.dyn.columbia.edu (160.39.243.212), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-254-244.dyn.columbia.edu (160.39.254.244), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.2kB received
	dyn-160-39-254-187.dyn.columbia.edu (160.39.254.187), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-243-216.dyn.columbia.edu (160.39.243.216), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-243-212.dyn.columbia.edu (160.39.243.212), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59758 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59436 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-239.dyn.columbia.edu (160.39.243.239), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.9kB received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59435 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59434 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57464 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57466 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57465 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57467 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-142.dyn.columbia.edu (160.39.243.142), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.8kB received
	dyn-160-39-255-180.dyn.columbia.edu (160.39.255.180), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-254-242.dyn.columbia.edu (160.39.254.242), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 118 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59432 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59431 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-3.dyn.columbia.edu (160.39.243.3), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-254-156.dyn.columbia.edu (160.39.254.156), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 388 Bytes received
	dyn-160-39-254-227.dyn.columbia.edu (160.39.254.227), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-243-39.dyn.columbia.edu (160.39.243.39), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59430 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59429 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-227.dyn.columbia.edu (160.39.254.227), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-255-48.dyn.columbia.edu (160.39.255.48), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51113 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59757 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-48.dyn.columbia.edu (160.39.255.48), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 174 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55942 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55941 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55940 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 49522 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55939 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55938 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55937 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55936 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-226.dyn.columbia.edu (160.39.243.226), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-191.dyn.columbia.edu (160.39.254.191), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 402 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53211 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-133.dyn.columbia.edu (160.39.254.133), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 49176 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-75.dyn.columbia.edu (160.39.254.75), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.8kB received
	dyn-160-39-255-94.dyn.columbia.edu (160.39.255.94), Port 62646 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-94.dyn.columbia.edu (160.39.255.94), Port 62645 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-168.dyn.columbia.edu (160.39.243.168), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54233 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54232 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54231 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59426 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55781 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-31.dyn.columbia.edu (160.39.242.31), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-242-87.dyn.columbia.edu (160.39.242.87), Port 50158 (unnamed), Protocol 17 (UDP), 124 Bytes sent, 100 Bytes received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 59112 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51078 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51079 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52505 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52504 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 53153 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49537 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-223.dyn.columbia.edu (160.39.255.223), Port 49292 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57460 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57459 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53820 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 53155 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 53154 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-29.dyn.columbia.edu (160.39.255.29), Port 56453 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52503 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52501 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49539 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49538 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49189 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49190 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52500 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-234.dyn.columbia.edu (160.39.243.234), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 250 Bytes received
	dyn-160-39-254-134.dyn.columbia.edu (160.39.254.134), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-106.dyn.columbia.edu (160.39.255.106), Port 62825 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59754 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-212.dyn.columbia.edu (160.39.255.212), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.6kB received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57456 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57455 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57457 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59737 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54230 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-125.dyn.columbia.edu (160.39.255.125), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 3.4kB received
	dyn-160-39-255-202.dyn.columbia.edu (160.39.255.202), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-242-31.dyn.columbia.edu (160.39.242.31), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 450 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54229 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-201.dyn.columbia.edu (160.39.243.201), Port 55260 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-13.dyn.columbia.edu (160.39.255.13), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.9kB received
	dyn-160-39-254-147.dyn.columbia.edu (160.39.254.147), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.5kB received
	dyn-160-39-254-125.dyn.columbia.edu (160.39.254.125), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 204 Bytes received
	dyn-160-39-254-147.dyn.columbia.edu (160.39.254.147), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-255-87.dyn.columbia.edu (160.39.255.87), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-168.dyn.columbia.edu (160.39.243.168), Port 51881 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55780 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-168.dyn.columbia.edu (160.39.243.168), Port 51880 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54224 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-47.dyn.columbia.edu (160.39.243.47), Port 50263 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 53139 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-160.dyn.columbia.edu (160.39.242.160), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-242-183.dyn.columbia.edu (160.39.242.183), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59716 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54192 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-87.dyn.columbia.edu (160.39.243.87), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59414 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-136.dyn.columbia.edu (160.39.242.136), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55906 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55907 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55905 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51031 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-117.dyn.columbia.edu (160.39.254.117), Port 59412 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55779 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55776 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-100.dyn.columbia.edu (160.39.242.100), Port 49612 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55778 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55777 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53206 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53209 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53208 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53207 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49188 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49187 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-123.dyn.columbia.edu (160.39.255.123), Port 64548 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55775 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51015 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51016 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-166.dyn.columbia.edu (160.39.254.166), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 201 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51014 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 51013 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52494 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52495 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52493 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 59043 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-29.dyn.columbia.edu (160.39.255.29), Port 56450 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54191 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-103.dyn.columbia.edu (160.39.243.103), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-255-199.dyn.columbia.edu (160.39.255.199), Port 56901 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-103.dyn.columbia.edu (160.39.243.103), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59713 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-225.dyn.columbia.edu (160.39.243.225), Port 57917 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-225.dyn.columbia.edu (160.39.243.225), Port 57918 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56718 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-225.dyn.columbia.edu (160.39.243.225), Port 57912 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.6kB received
	dyn-160-39-255-123.dyn.columbia.edu (160.39.255.123), Port 64544 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-246.dyn.columbia.edu (160.39.255.246), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 410 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 50979 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 50980 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-53.dyn.columbia.edu (160.39.254.53), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 348 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49627 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50546 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50544 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50545 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-47.dyn.columbia.edu (160.39.243.47), Port 50249 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50543 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-47.dyn.columbia.edu (160.39.243.47), Port 50250 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-57.dyn.columbia.edu (160.39.242.57), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.5kB received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50542 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-47.dyn.columbia.edu (160.39.243.47), Port 50244 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55772 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55771 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55773 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-69.dyn.columbia.edu (160.39.255.69), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 450 Bytes received
	dyn-160-39-255-101.dyn.columbia.edu (160.39.255.101), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55768 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55767 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-69.dyn.columbia.edu (160.39.255.69), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 348 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50024 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-200.dyn.columbia.edu (160.39.254.200), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 188 Bytes received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 50322 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50022 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 56261 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50023 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50025 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49625 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 56260 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59710 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-146.dyn.columbia.edu (160.39.255.146), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-242.dyn.columbia.edu (160.39.254.242), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-242-100.dyn.columbia.edu (160.39.242.100), Port 49610 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-100.dyn.columbia.edu (160.39.242.100), Port 49604 (unnamed), Protocol 17 (UDP), 124 Bytes sent, 100 Bytes received
	dyn-160-39-242-100.dyn.columbia.edu (160.39.242.100), Port 49609 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-173.dyn.columbia.edu (160.39.254.173), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-242.dyn.columbia.edu (160.39.254.242), Port 49273 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-194.dyn.columbia.edu (160.39.255.194), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-255-194.dyn.columbia.edu (160.39.255.194), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-254-242.dyn.columbia.edu (160.39.254.242), Port 49272 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-242.dyn.columbia.edu (160.39.254.242), Port 49269 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-96.dyn.columbia.edu (160.39.243.96), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-243-96.dyn.columbia.edu (160.39.243.96), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 250 Bytes received
	dyn-160-39-242-113.dyn.columbia.edu (160.39.242.113), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 211 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56712 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56711 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-229.dyn.columbia.edu (160.39.243.229), Port 55526 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56678 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59707 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56683 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-149.dyn.columbia.edu (160.39.242.149), Port 56676 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-201.dyn.columbia.edu (160.39.243.201), Port 55259 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-123.dyn.columbia.edu (160.39.255.123), Port 64538 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-123.dyn.columbia.edu (160.39.255.123), Port 64543 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-65.dyn.columbia.edu (160.39.254.65), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 201 Bytes received
	dyn-160-39-254-225.dyn.columbia.edu (160.39.254.225), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	dyn-160-39-255-202.dyn.columbia.edu (160.39.255.202), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-254-225.dyn.columbia.edu (160.39.254.225), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-255-199.dyn.columbia.edu (160.39.255.199), Port 56809 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-199.dyn.columbia.edu (160.39.255.199), Port 56814 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50538 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50537 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50539 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49622 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-237.dyn.columbia.edu (160.39.243.237), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57442 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57441 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57440 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-77.dyn.columbia.edu (160.39.243.77), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59702 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-94.dyn.columbia.edu (160.39.255.94), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49616 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49614 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55766 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55765 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-115.dyn.columbia.edu (160.39.255.115), Port 49613 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-75.dyn.columbia.edu (160.39.254.75), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 50313 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-13.dyn.columbia.edu (160.39.255.13), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-254-133.dyn.columbia.edu (160.39.254.133), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.8kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 50312 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-254-17.dyn.columbia.edu (160.39.254.17), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 201 Bytes received
	dyn-160-39-242-158.dyn.columbia.edu (160.39.242.158), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.6kB received
	dyn-160-39-254-66.dyn.columbia.edu (160.39.254.66), Port 50307 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-229.dyn.columbia.edu (160.39.243.229), Port 55523 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-82.dyn.columbia.edu (160.39.255.82), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 53076 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-21.dyn.columbia.edu (160.39.255.21), Port 62264 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-229.dyn.columbia.edu (160.39.243.229), Port 55517 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54162 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-229.dyn.columbia.edu (160.39.243.229), Port 55522 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 56250 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55898 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55897 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55896 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59699 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-201.dyn.columbia.edu (160.39.243.201), Port 55255 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-201.dyn.columbia.edu (160.39.243.201), Port 55256 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 56237 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 56235 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-243-201.dyn.columbia.edu (160.39.243.201), Port 55250 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-4.dyn.columbia.edu (160.39.242.4), Port 56234 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53202 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53204 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53205 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53203 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49185 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49186 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-51.dyn.columbia.edu (160.39.243.51), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 417 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52104 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52470 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52469 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49342 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 58888 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-29.dyn.columbia.edu (160.39.255.29), Port 56442 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-12.dyn.columbia.edu (160.39.243.12), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 215 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59696 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.0kB received
	dyn-160-39-254-235.dyn.columbia.edu (160.39.254.235), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 2.2kB received
	dyn-160-39-254-146.dyn.columbia.edu (160.39.254.146), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50010 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50009 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-212.dyn.columbia.edu (160.39.255.212), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-242-83.dyn.columbia.edu (160.39.242.83), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50006 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-80.dyn.columbia.edu (160.39.255.80), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 201 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50008 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50007 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50005 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 50003 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-147.dyn.columbia.edu (160.39.242.147), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 0.9kB received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 49997 (unnamed), Protocol 17 (UDP), 62 Bytes sent, 50 Bytes received
	dyn-160-39-255-250.dyn.columbia.edu (160.39.255.250), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 228 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 49999 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-147.dyn.columbia.edu (160.39.242.147), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 49995 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59693 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-160.dyn.columbia.edu (160.39.242.160), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 450 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 0.7kB received
	160.39.243.255 (160.39.243.255), Port 137 (netbios-ns), Protocol 17 (UDP), 0.7kB sent, 0 Bytes received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 413 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59690 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50528 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50530 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-154.dyn.columbia.edu (160.39.242.154), Port 50529 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-204.dyn.columbia.edu (160.39.243.204), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 350 Bytes received
	dyn-160-39-243-190.dyn.columbia.edu (160.39.243.190), Port 58882 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-36.dyn.columbia.edu (160.39.242.36), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-255-158.dyn.columbia.edu (160.39.255.158), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.1kB received
	dyn-160-39-254-235.dyn.columbia.edu (160.39.254.235), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 450 Bytes received
	dyn-160-39-242-36.dyn.columbia.edu (160.39.242.36), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 348 Bytes received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 49174 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-182.dyn.columbia.edu (160.39.255.182), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 250 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57424 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57427 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57426 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57425 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 52990 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-82.dyn.columbia.edu (160.39.255.82), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-255-129.dyn.columbia.edu (160.39.255.129), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 357 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55761 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55760 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-223.dyn.columbia.edu (160.39.255.223), Port 49262 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55762 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55764 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55763 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-129.dyn.columbia.edu (160.39.255.129), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 418 Bytes received
	dyn-160-39-254-146.dyn.columbia.edu (160.39.254.146), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 211 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59687 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57422 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-104.dyn.columbia.edu (160.39.255.104), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 201 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57421 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54128 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52087 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55875 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55874 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55876 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55872 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55873 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55871 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-14.dyn.columbia.edu (160.39.243.14), Port 55870 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52085 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53200 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53199 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53198 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 49456 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 49455 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49175 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-89.dyn.columbia.edu (160.39.254.89), Port 53197 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59684 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-78.dyn.columbia.edu (160.39.254.78), Port 49172 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51077 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54106 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54105 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 57949 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 57948 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 57947 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-234.dyn.columbia.edu (160.39.255.234), Port 57946 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52083 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52448 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52447 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52446 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52443 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52442 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49335 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-57.dyn.columbia.edu (160.39.255.57), Port 58725 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 49985 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 49984 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-87.dyn.columbia.edu (160.39.242.87), Port 50085 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52081 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52080 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-42.dyn.columbia.edu (160.39.254.42), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 52987 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53816 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-88.dyn.columbia.edu (160.39.254.88), Port 52986 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49329 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-146.dyn.columbia.edu (160.39.243.146), Port 49530 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55758 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-21.dyn.columbia.edu (160.39.255.21), Port 62235 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52079 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49173 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52077 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52076 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52075 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-61.dyn.columbia.edu (160.39.242.61), Port 49982 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-148.dyn.columbia.edu (160.39.242.148), Port 52078 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49331 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49330 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49334 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49333 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49332 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-35.dyn.columbia.edu (160.39.243.35), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 300 Bytes received
	dyn-160-39-243-190.dyn.columbia.edu (160.39.243.190), Port 58814 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-71.dyn.columbia.edu (160.39.255.71), Port 54104 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-190.dyn.columbia.edu (160.39.243.190), Port 58808 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51076 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49326 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49328 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49325 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49324 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49323 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-242-238.dyn.columbia.edu (160.39.242.238), Port 52440 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-52.dyn.columbia.edu (160.39.242.52), Port 49327 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49171 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-242-133.dyn.columbia.edu (160.39.242.133), Port 49172 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-106.dyn.columbia.edu (160.39.255.106), Port 62744 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-59.dyn.columbia.edu (160.39.243.59), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 1.3kB received
	dyn-160-39-243-168.dyn.columbia.edu (160.39.243.168), Port 51870 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59681 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-243-168.dyn.columbia.edu (160.39.243.168), Port 51869 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-239.dyn.columbia.edu (160.39.243.239), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 1.5kB received
	dyn-160-39-242-83.dyn.columbia.edu (160.39.242.83), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 400 Bytes received
	dyn-160-39-254-251.dyn.columbia.edu (160.39.254.251), Port 49454 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-106.dyn.columbia.edu (160.39.255.106), Port 62739 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-243-176.dyn.columbia.edu (160.39.243.176), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 201 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55755 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55754 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55753 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57388 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53808 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59678 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53809 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53815 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53814 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53813 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53812 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53811 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 100 Bytes received
	dyn-160-39-255-102.dyn.columbia.edu (160.39.255.102), Port 53810 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-254-211.dyn.columbia.edu (160.39.254.211), Port 138 (netbios-dgm), Protocol 17 (UDP), 0 Bytes sent, 429 Bytes received
	dyn-160-39-255-158.dyn.columbia.edu (160.39.255.158), Port 137 (netbios-ns), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-116.dyn.columbia.edu (160.39.254.116), Port 55751 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-179.dyn.columbia.edu (160.39.254.179), Port 57387 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-255-155.dyn.columbia.edu (160.39.255.155), Port 59677 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 50162 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 150 Bytes received
	dyn-160-39-243-70.dyn.columbia.edu (160.39.243.70), Port 50198 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51061 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
	dyn-160-39-254-237.dyn.columbia.edu (160.39.254.237), Port 51066 (unnamed), Protocol 17 (UDP), 0 Bytes sent, 50 Bytes received
</pre>
</div>

Now, I know that mDNSResponder is the daemon behind [Bonjour](http://developer.apple.com/networking/bonjour/index.html), and nmbd is a &#8220;NetBIOS name server to provide NetBIOS over IP naming services to clients&#8221;, according to [this man page](http://developer.apple.com/documentation/Darwin/Reference/ManPages/man8/nmbd.8.html). ([Bonjour page that mentions mDNSResponder](http://developer.apple.com/opensource/internet/bonjour.html)) ([mDNSResponder man page](http://developer.apple.com/DOCUMENTATION/Darwin/Reference/ManPages/man8/mDNSResponder.8.html))

So I don&#8217;t know whether mDNSResponder and nmbd are directly interacting with each other, or whether they&#8217;re independently reacting to being connected to a LAN with, apparently, thousands of computers. I don&#8217;t actually know how to get a count of nodes on a LAN. But it looks like this one is fairly immense.

(The behaviour of Finder&#8217;s Network location in pretty strange. It seems to generally list 75-90 entries, but they&#8217;re constantly changing.)

I sent a SIGINFO siglan to mDNSResponder as described on its man page, and then searched the system log for entries from its process ID &#8211; 2825 found. That&#8217;s a lot.

Also, in the time I&#8217;ve been writing this, mDNSResponder has recieved another 18MB of data. Thats a lot.

I don&#8217;t actually have a specific point to this post. Just publishing my observations, hoping Google will pick them up, and one day perhaps connect me to someone who may be able to help shed some light on what&#8217;s going on, and whether I may want to do something about it, or whether any of this behaviour represents a problem, that Apple should correct.

My primary concerns about this behaviour are for battery life, CPU utilization, and security. I&#8217;m using a power adapter right now, but I wonder how many students have found their battery life mysteriously shorter than usual when connected to Columbia&#8217;s network. (My load averages are 0.63 0.73 0.66, that&#8217;s pretty high for writing a blog post.)

(I&#8217;m running Mac OS X 10.5.2, build 9C31, on a 2.2GHz Santa Rosa Merom MacBook with 4GB of [OWC](http://macsales.com/) RAM, and a 200GB 7200RPM Hitachi HDD.)