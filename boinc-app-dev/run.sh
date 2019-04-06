#!/usr/bin/env bash


docker run -it --hostname boinc-master-machine \
	-p 80:80 -p 8080:8080 -p 3306:3306 \
	-v $PWD/src/:/boinc-project/src boinc-app-dev

exit 0
