#! /bin/sh

echo ` awk 'NR==1 {print $1}' /etc/hosts` > /var/www/index.html
lighttpd -D -f /etc/lighttpd/lighttpd.conf
