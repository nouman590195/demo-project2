FROM centos:7
MAINTAINER nouman90195@gmail..com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/sene-ca.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip seneca.zip
RUN cp -rvf seneca/* .
RUN rm -rf seneca.zip seneca
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
