FROM ubuntu
MAINTAINER Sergey Tarasov
WORKDIR /
COPY mariadb.conf.d /tmp/mariadb.conf.d
COPY up-environment.sh /tmp/up-environment.sh
RUN /tmp/up-environment.sh
VOLUME ["/var/lib/mysql"]
EXPOSE 80
EXPOSE 8080
EXPOSE 3306