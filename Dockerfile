FROM alpine

USER root

RUN apk add php7 apache2 php7-sqlite3 sqlite libspatialite-dev 

RUN  sed -i 's/;sqlite3.extension_dir =/sqlite3.extension_dir =\/usr\/lib/' /etc/php7/php.ini

WORKDIR /var/www/localhost/htdocs

COPY . . 

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]