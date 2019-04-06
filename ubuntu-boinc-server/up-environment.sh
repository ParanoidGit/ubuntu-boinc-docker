#!/usr/bin/env bash

TZ="Asia/Krasnoyarsk"
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

apt-get update
apt-get install -y git \
	python \
	python-pip \
	php-mysql \
	php \
	make \
	m4 \
	pkg-config \
	autoconf \
	libtool \
	mariadb-server \
	mariadb-client \
	apache2 \
	libmysql++-dev \
	libssl-dev \
	libcurl4-openssl-dev \
	php7.2-xml \
	cron \
	nano

pip install mysqlclient

git clone https://github.com/BOINC/boinc.git
cd boinc
./_autosetup 
./configure --disable-client --disable-manager
make
cd ..

cp /tmp/mariadb.conf.d/* /etc/mysql/mariadb.conf.d/
service mysql restart

echo -e "\n[mysqld]\nskip-grant-tables\n" >> /etc/mysql/my.cnf

rm $0

exit 0
