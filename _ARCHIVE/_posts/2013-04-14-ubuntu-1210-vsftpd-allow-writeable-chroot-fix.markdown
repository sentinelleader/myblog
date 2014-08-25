---
layout: post
title: "Ubuntu 12.10 vsftpd allow writeable chroot"
image_thumbnail_500x320: "binaryx320.jpg"
image_thumbnail_500x500: "binaryx500.jpg"
categories: [code]
tags: [digital-ocean]
---
<!-- more -->
<p>If you have been following my previous guides, especially the latest {% link https://www.digitalocean.com/ "Digital Ocean" %} guide for creating a new
<a href="{% post_url 2013-04-13-digital-ocean-ubuntu-12-10-64bit-lamp-server %}">Ubuntu 12.10 64bit LAMP Server</a> you may have encountered the glaring problem regarding
jailing users in vsftpd.  
</p>

{% blockquote %}
500 OOPS: vsftpd: refusing to run with writable root inside chroot()
{% endblockquote %}

<p>After extensive research on this topic, and locating a great blog post {% link http://blog.desertbushtech.com/2013/02/i-use-ubuntu.html "i use ubuntu" %}, this is how you fix the bug.
You have to roll the current version of vsftpd back to the previous setup using the root user.  
</p>

<p>Here are the commands:</p>

```
#get the code
wget http://www.kunniagaming.net/vsftpd-chroot-patched-12.10/vsftpd_2.3.5-3.jme_amd64.deb

#install
sudo dpkg -i vsftpd_2.3.5-3.jme_amd64.deb

#restart the service
sudo service vsftpd restart
```

<p>Once completed, I would reboot the server and verify you can successfully ftp [ftp user name]@[server ipaddress] [ftp port] connect to the box and the specified user is correctly jailed to
their home directory.</p>
