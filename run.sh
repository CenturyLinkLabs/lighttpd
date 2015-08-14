#! /bin/sh

lighttpd -D -f /etc/lighttpd/lighttpd.conf &

while true; do
  echo "<html>
    <head>
        <title>Chimera install Log</title>
        <meta http-equiv="refresh" content="5">
    </head>
    <body>" > /var/www/index.html
  tail -50 /log | tac | sed 's/$/<br>/' >> /var/www/index.html
 echo "</body>
    </html>" >> /var/www/index.html
    sleep 5
done
