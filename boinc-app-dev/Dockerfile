FROM ubuntu-boinc-server
MAINTAINER Sergey Tarasov
WORKDIR /boinc-project
COPY up-services.sh /boinc-project/up-services.sh
COPY make-project.sh /boinc-project/make-project.sh
RUN chmod +x /boinc-project/up-services.sh /boinc-project/make-project.sh
RUN echo "ServerName 172.17.0.2" >> /etc/apache2/apache2.conf
CMD /boinc-project/up-services.sh && /boinc-project/make-project.sh && /bin/bash
EXPOSE 80
