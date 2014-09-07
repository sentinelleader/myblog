---
layout: post
title: "Digital Ocean Ubuntu 12.10 64bit LAMP Server"
image_thumbnail_500x320: "binaryx320.jpg"
image_thumbnail_500x500: "binaryx500.jpg"
categories: [code]
tags: [digital-ocean]
---
<!-- more -->
<p>A good friend recommended I give {% link https://www.digitalocean.com/ "Digital Ocean" %} a try in place of my current setup at {% link https://www.rackspace.com/ "Rackspace" %} which was a
<a href="{% post_url 2013-03-24-rackspace-cloud-setup-ubuntu-12-04-lamp-server %}">Ubuntu 12.04 LAMP Server</a>. After reviewing the cost, hard drive and processor comparisons I went all in.  Previous to my
current setup, I had also configured another box with Rackspace which was a <a href="{% post_url 2013-01-12-wordpress-rackspace-cloud-ubuntu-12-04-lemp-setup %}">Ubuntu 12.04 LEMP Server</a>. This guide has been
modified to match digital ocean as well as account for everything that I have learned so far in setting up all three boxes.  Various steps of this guide will require variables to be replaced with your specific account data. I have used the segment “[variable]” to represent this. Also, anything between "[[ ]]" include
everything inside of those blocks.  
</p>

{% gist 5402335 %}
