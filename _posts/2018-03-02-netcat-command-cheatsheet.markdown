---
title: Netcat Command Cheatsheet
layout: post
date: 2018-03-02 13:43
tag:
- unix
- netcat
- post
category: blog
author: rousan
description: Netcat command cheatsheet
permalink: /posts/:title/
---

## Netcat Cheatsheet

#### Netcat listening on port 567/TCP

{% highlight bash %}
$ nc -l 567
{% endhighlight %}

#### Connecting to that port from another machine

{% highlight bash %}
$ nc 1.2.3.4 5676
{% endhighlight %}

#### To pipe a text file to the listener

{% highlight bash %}
$ cat infile | nc 1.2.3.4 567 -q 10
{% endhighlight %}

#### To have the listener save a received text file

{% highlight bash %}
$ nc -l -p 567 > textfile
{% endhighlight %}

#### To transfer a directory, first at the receiving end set up

{% highlight bash %}
$ nc -l -p 678 | tar xvfpz
{% endhighlight %}

#### Then send the directory

{% highlight bash %}
$ tar zcfp - /path/to/directory | nc -w 3 1.2.3.4 678
{% endhighlight %}

#### To send a message to your syslog server (the <0> means emerg)

{% highlight bash %}
$ echo '<0>message' | nc -w 1 -u syslogger 514
{% endhighlight %}

#### Setting up a remote shell listener

{% highlight bash %}
$ nc -v -e '/bin/bash' -l -p 1234 -t
{% endhighlight %}

`or`

{% highlight bash %}
$ nc l p 1234 e "c:\windows\system32\cmd.exe"
{% endhighlight %}

Then telnet to port 1234 from elsewhere to get the shell.

#### Using netcat to make an HTTP request

{% highlight bash %}
$ echo -e "GET http://www.google.com HTTP/1.0nn" | nc -w 5 www.google.com 80
{% endhighlight %}

#### Making a one-page webserver; this will feed homepage.txt to all comers

{% highlight bash %}
$ cat homepage.txt | nc -v -l -p 80
{% endhighlight %}