---
layout: post
title: "Rackspace Cloud Setup Ubuntu 12.04 LAMP Server"
image_thumbnail_500x320: "binaryx320.jpg"
image_thumbnail_500x500: "binaryx500.jpg"
categories: [code]
tags: [rackspace-cloud]
---
<p>This guide will walk you through setting up your first Ubuntu LAMP server with Rackspace Cloud. A LAMP Server is made up of Ubuntu Linux, Apache, MySQL, and PHP and in my
case I am using this machine to host a high traffic Wordpress based installation for a startup content funnel. In one of my previous posts <a href="{% post_url 2013-01-12-wordpress-rackspace-cloud-ubuntu-12-04-lemp-setup %}">Wordpress Rackspace Cloud Ubuntu 12.04 LEMP Setup</a> I
set out to setup an NGiNX version, however, after running into many setup and configuration issues with numerous plugins I pulled the trigger to rebuild the server.  If you run into
any issues with this guide please let me know in the comments.  Also, once you have finished the guide successfully make sure you setup external cloud backups for the server which are configured
differently than the classic cloud interface.
</p><!-- more -->
<p><strong>Preliminary</strong></p>
<ul>
<li>Prior to starting this walkthrough make sure you have successfully created your Rackspace Cloud account and can successfully log into your control panel.  It may also be a good
idea to check the {% link https://status.rackspace.com/ "Cloud Server Status" %} site to see if there are any scheduled maintenance windows occurring when you plan to tackle this project.
</li>
<li>This guide was written using OSX Terminal, if you are on a windows or linux machine you will have to make adjustments to whatever shell tool you are using.</li>
<li>Linux is case sensitive, so make sure to match what I have outlined in various code blocks or you may run into issues.</li>
<li>I use a password manager i.e. LastPass/1Password to manage and generate high risk security passwords for every password I need. If you have not used a password manager before,
I highly recommend this product.  To give you an example all of my password are greater than 40 alpha-numeric + symbols.  Better to be safe than sorry!</li>
<li>If you intend on using Jungle Disc as your Rackspace Cloud Automated backup solution your Rackspace Cloud account MUST BE provisioned out of their DFW datacenter.  If you’re not inside
the DFW datacenter you can not take advantage of ServiceNet which will avoid UL/DL charges against your monthly bandwidth usage.</li>
<li>You should have the list of user(s) you would like to configure for SSH, FTP, and MYSQL ready to go before you start this.  If you are using a password manager to manage your passwords
take a few moments to build your passwords for your user(s) for both FTP, SSH, and MYSQL before you begin.  It just saves time.</li>
<li>Which timezone would you like operating system to be set to?  We are using PST.</li>
<li>I like to reboot after major installs, maybe it’s an old windows habit, but I prefer to be very thorough.  If a step calls for a reboot, just ssh back in.</li>
<li>Various steps of this guide will require variables to be replaced with your specific account data. I have used the segment “[variable]” to represent this. Also, anything between "[[ ]]" include
everything inside of those blocks.</li>
</ul>

<p><strong>Here are the detailed commands:</strong></p>

{% gist 5234762 %}

<p><strong>CONCLUSION</strong></p>

<p>It took me a while to get this going and I hope this guide help saves you time. I tried to be as detailed as possible, if you have any questions or see
any areas I can improve on, please let me know. &nbsp;I would enjoy hearing your feedback on improving this.</p>
<p>I have to give props to the threads that helped me get this going:</p>
<p>
{% link http://blog.al4.co.nz/2011/05/setting-up-a-secure-ubuntu-lamp-server/ "Setting up a secure Ubuntu LAMP server" %}<br />
{% link http://www.howtoforge.com/installing-apache2-with-php5-and-mysql-support-on-ubuntu-11.04-lamp Installing Apache2 With PHP5 And MySQL Support On Ubuntu 11.04 (LAMP)" %}<br />
{% link http://www.debian-administration.org/articles/412 "Debian Administration" %}<br />
{% link http://httpd.apache.org/docs/2.2/vhosts/examples.html "Apache HTTP Server Version" %}<br />
{% link http://www.mmncs.com/2011/07/how-to-protect-apache-against-dos-ddos-or-brute-force-attacks-using-mod_evasive-and-mod_security-and-mod_qos-on-linux-ubuntu-11-04/ "How to protect Apache against DOS,DDOS or brute force attacks using mod_evasive and mod_security and mod_qos on Linux Ubuntu 11.04" %}<br />
{% link http://opensource.adnovum.ch/mod_qos/ "mod_qos" %}<br />
{% link http://vishnulinux.wordpress.com/2012/11/15/913/ "SLOWLORIS ATTACK" %}<br />
	</p>
