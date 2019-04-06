#!/usr/bin/env bash

export APACHE_RUN_USER=root
a2enmod cgi
a2enmod php7.2
service mysql start
service apache2 start
service cron start

exit 0