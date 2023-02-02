FROM alpine

RUN apk update &&\
    apk upgrade &&\
    apk add apache2 libxml2-dev apache2-utils

COPY index.html /var/www/localhost/htdocs/index.html

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

# Start httpd
#ENTRYPOINT ["/usr/sbin/httpd"]

EXPOSE 80 443
