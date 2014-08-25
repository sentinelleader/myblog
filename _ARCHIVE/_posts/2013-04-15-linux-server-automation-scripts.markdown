---
layout: post
title: "Linux Server Automation Scripts"
image_thumbnail_500x320: "binaryx320.jpg"
image_thumbnail_500x500: "binaryx500.jpg"
categories: [code]
tags: [digital-ocean]
---
<p>First, I am no system administrator, but as a developer I detest having to do perform steps manually that can be automated.  With my startup I had to build quite a few different Linux servers and during
this exciting process, I had to figure out how to automate a few of the regular mundane tasks. I will keep this list updated as I go, but so far here are the set that I have been happiest with in managing
the structure of the content funnel side of our business.</p><!-- more -->

<p><strong>Back up the Content Funnel Databases</strong></p>
<p>{% gist 4522386 backup-databases.sh %}</p>

<p><strong>Back up the Content Funnel</strong></p>
<p>{% gist 4522386 backup-wordpress-site-files.sh %}</p>

<p><strong>My Nightly Server Reboot with Log</strong></p>
<p>{% gist 4522386 server-reboot.sh %}</p>

<p><strong>Cleaning Up Backup Zip Files</strong></p>
<p>{% gist 4522386 backup-cleanup.sh %}</p>
