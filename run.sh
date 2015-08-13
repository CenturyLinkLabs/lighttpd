#! /bin/sh

lighttpd -D -f /etc/lighttpd/lighttpd.conf &

while true; do
    sed 's/$/<br>/' /log  | tac > /var/www/index.html
    sleep 5
done
