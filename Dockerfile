#Author: Sukanto Mondal
#A basic centos6 server docker image

FROM centos:6
ENV container docker

#install apache

RUN yum -y install httpd;
EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

#ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#CMD ["/usr/sbin/init"]
