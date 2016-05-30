#!/bin/bash
if [ -a /etc/bind/remote-access-ip ]
then
  IP=`cat /etc/bind/remote-access-ip`
  echo "A:$IP" > /opt/bind-http/config.cfg
  echo "D:*" >> /opt/bind-http/config.cfg
  exec busybox httpd -f -p 80 -u www-user:www-user -h /opt/bind-http -c /opt/bind-http/config.cfg
fi