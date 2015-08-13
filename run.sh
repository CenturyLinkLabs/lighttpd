#! /bin/sh

lighttpd -D -f /etc/lighttpd/lighttpd.conf &

while true; do
    tail -50 /var/log/syslog | tac | sed 's/$/<br>/' > /var/www/index.html
    sleep 2
done
