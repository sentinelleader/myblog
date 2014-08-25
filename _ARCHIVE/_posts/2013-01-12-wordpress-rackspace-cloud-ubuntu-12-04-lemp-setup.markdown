---
layout: post
title: "Wordpress Rackspace Cloud Ubuntu 12.04 LEMP Setup"
image_thumbnail_500x320: "binaryx320.jpg"
image_thumbnail_500x500: "binaryx500.jpg"
categories: [code]
tags: [rackspace-cloud]
---
<p>If you have been following my guides, this edition builds off of a previous post <a href="{% post_url 2013-01-12-wordpress-rackspace-cloud-ubuntu-12-04-lemp-setup %}">Rackspace Cloud Ubuntu 12.04 LEMP Setup</a>
 which walked you through setting up a brand new rackspace lemp server.  This post will build off it and dive deeper into a wordpress site with optional rackspace cdn cloudfuse
 integration.  Various steps of this guide will require variables to be replaced with your specific account data. I have used the segment “[variable]” to represent this. Also, anything between "[[ ]]" include
everything inside of those blocks.
</p><!-- more -->

<p><strong>Here are the detailed commands:</strong></p>

<p>{% gist 4507843 Wordpress-Rackspace-Cloud-Ubuntu-1204-LEMP-Setup.txt %}</p>

<p><strong>Expand further! To complete our base site project the following plugins were installed and configured:</strong></p>
<ul>
<li>{% link http://wordpress.org/extend/plugins/bwp-google-xml-sitemaps/ "Better WordPress Google XML Sitemaps" %}</li>
<li>{% link http://wordpress.org/extend/plugins/google-analytics-for-wordpress/ "Google Analytics for WordPress" %}</li>
<li>{% link http://wordpress.org/extend/plugins/w3-total-cache/ "W3 Total Cache" %}</li>
<li>{% link http://wordpress.org/extend/plugins/age-verify/ "Age Verify" %}</li>
<li>{% link http://wordpress.org/extend/plugins/disqus-comment-system/ "Disqus Comment System" %}</li>
<li>{% link http://wordpress.org/extend/plugins/wordpress-seo/ "WordPress SEO by Yoast" %}</li>
<li>{% link http://wordpress.org/extend/plugins/all-in-one-seo-pack/ "All in One SEO Pack" %}</li>
<li>{% link http://wordpress.org/extend/plugins/newsletter-sign-up/ "Newsletter Sign-Up" %}</li>
<li>{% link http://wordpress.org/extend/plugins/user-photo/ "User Photo" %}</li>
<li>{% link http://wordpress.org/extend/plugins/social-media-widget/ "Social Media Widget" %}</li>
<li>{% link http://wordpress.org/extend/plugins/advanced-browser-check/ "Advanced Browser Check" %}</li>
</ul>
<p><strong>An example NGiNX site configuration that is compatible with the W3TC plug in:</strong></p>

<p>{% gist 4507843 NGiNX-Site.txt %}</p>
