FROM centos:7
MAINTAINER nouman90195@gmail..com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/edulab.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip edulab.zip
RUN cp -rvf edulab/* .
RUN rm -rf edulab.zip edulab
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
