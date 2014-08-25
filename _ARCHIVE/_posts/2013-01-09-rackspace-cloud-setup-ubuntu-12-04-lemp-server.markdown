---
layout: post
title: "Rackspace Cloud Setup Ubuntu 12.04 LEMP Server"
image_thumbnail_500x320: "binaryx320.jpg"
image_thumbnail_500x500: "binaryx500.jpg"
categories: [code]
tags: [rackspace-cloud]
---
<p>This guide will walk you through setting up your first Ubuntu LEMP server with Rackspace. A LEMP Server is made up of Ubuntu Linux, NGiNX, MySQL, and PHP and in my
case I am using this machine to host a high traffic Wordpress based installation.  In other posts I will take you through setting up NGiNX cache and using the Rackspace CDN to host
your blog images.</p><!-- more -->
<p>Preliminary</p>
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

{% gist 4500024 %}

<p>After you have completed all of these steps, it's now a great idea to get your Rackspace backups going. The timezone is GMT so make sure to account for the time difference
i.e. 1000-1200 => 02:00-04:00am PST.  I recommend you schedule both daily and weekly.</p>

<p><strong>CONCLUSION</strong></p>

<p>It took me a while to get this going and I hope this guide help saves you time. I tried to be as detailed as possible, if you have any questions or see
any areas I can improve on, please let me know. &nbsp;I would enjoy hearing your feedback on improving this.</p>
<p>I have to give props to the threads that helped me get this going:</p>
<p>{% link http://nerdinthebasement.com/setting-up-a-lemp-server-on-ubuntu-11-04/ "Setting up a LEMP Server on Ubuntu 11.04" %}<br />
	{% link http://blog.al4.co.nz/2011/05/setting-up-a-secure-ubuntu-lamp-server/ "Setting up a secure Ubuntu LAMP server" %}<br />
	{% link http://blog.jtclark.ca/tag/rackspace-cloud/ "Configuring Zend Server CE in Ubuntu 9.10 on a Rackspace Cloud Server" %}<br />
	{% link https://help.ubuntu.com/8.04/serverguide/C/user-management.html "Ubuntu User Management" %}<br />
	{% link https://help.ubuntu.com/community/SSH/OpenSSH/Keys "Open SSH Keys" %}<br />
	{% link http://linuxservertutorials.blogspot.com/2008/11/ubuntu-useradd-command.html "Ubuntu useradd command" %}<br />
	{% link http://www.jonathanmoeller.com/screed/?p=2981 "Basic FTP Server Setup with vsftpd on Ubuntu 11.04 Natty Narwhal" %}<br />
	{% link https://help.ubuntu.com/11.04/serverguide/C/firewall.html "ufw - Uncomplicated Firewall" %}<br />
  {% link http://ubuntuforums.org/showthread.php?t=518293 "Howto: Easy FTP with vsftpd" %}</p>
