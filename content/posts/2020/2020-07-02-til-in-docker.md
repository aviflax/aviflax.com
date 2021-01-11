---
title: 'TIL: In Docker for Mac, there is a default memory limit of 2GB…'
date: '2020-07-02T16:59:27-05:00'
---
TIL:

> In Docker for Mac, there is a default memory limit of 2GB, in order to run docker-compose up successfully you have to change default memory settings from 2GB to at least 4 or 5GB. To do so, click on the Docker icon in the menu bar, then “Preferences…”, go to “Advanced” tab and set 5GB of memory, then click on “Apply & Restart” and run docker-compose up.

[source](https://documentation.wazuh.com/2.1/docker/wazuh-container.html#docker-for-osx)
