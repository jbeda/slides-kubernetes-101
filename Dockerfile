FROM alpine
MAINTAINER Augustine Correa augustine.correa@hackmum.in

COPY . /src

EXPOSE 80

CMD ["httpd", "-f", "-h", "/src", "-c", "/src/httpd.conf"]