#!/usr/bin/env bash


docker build --rm -t ubuntu-boinc-server .
container_id=`docker ps -aqf "name=ubuntu-boinc-server"`
docker commit $container_id ubuntu-boinc-server
exit 0