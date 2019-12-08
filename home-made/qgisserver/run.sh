#!/bin/bash

#if set, define FQDN in apache config
if [ -n "$APACHE_SERVERNAME" ]; then
    sed -i -E "s|ServerName localhost|ServerName ${APACHE_SERVERADMIN}|gm" /etc/apache2/sites-enabled/000-default.conf;
    sed -i -E "s|ServerAdmin webmaster@localhost|ServerAdmin ${APACHE_SERVERNAME}|gm" /etc/apache2/sites-enabled/000-default.conf;
    echo 'ServerName ${APACHE_SERVERNAME}'  >> /etc/apache2/apache2.conf;
fi

#create default index.html file if it does not exist
touch /var/www/html/index.html

chown -R www-data:www-data /var/www/html

mkdir -p /var/log/qgis/
chown www-data:www-data /var/log/qgis

mkdir -p /home/qgis/qgisserverdb
chown www-data:www-data /home/qgis/qgisserverdb

#if [ ! -d /var/www/html/qgiswc ]
#then
#    cd /var/www/html
#    wget https://github.com/qgis/QGIS-Web-Client/archive/master.zip
#    unzip master.zip
#    mv QGIS-Web-Client-master qgiswc
#    chown -R www-data:www-data qgiswc
#fi

# Apache gets grumpy about PID files pre-existing
rm -f /usr/local/apache2/logs/httpd.pid
# remove wvfb lock if necessary
rm -f /tmp/.X99-lock
#xvfb
/usr/bin/Xvfb  :99 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &

exec /usr/sbin/apache2ctl -D FOREGROUND
