FROM ubuntu:16.04

MAINTAINER J K

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


ADD default-nginx /etc/nginx/sites-available/default
ADD hello-world.html /var/www/html/index.html


EXPOSE 80
CMD ["nginx"]
