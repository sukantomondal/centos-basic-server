#Author: Sukanto Mondal
#A basic centos6 server docker image

FROM centos:6
ENV container docker
ADD init_script.sh /root/init_script.sh

RUN yum -y install httpd php;
EXPOSE 80

#ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
#ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#CMD ["/usr/sbin/init"]
#CMD tail -f /dev/null

CMD sh /root/init_script.sh
