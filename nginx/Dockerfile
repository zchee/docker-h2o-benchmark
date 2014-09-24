# Dockerfile for nginx
# Version: 0.0.0

FROM        ubuntu:14.04
MAINTAINER  Naoki OKAMURA (Nyarla) <nyarla@thotep.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git build-essential
RUN mkdir -p /opt

# Install nginx dependences
RUN apt-get install -y libssl-dev zlib1g-dev libpcre3-dev

# Install nginx from git head
RUN cd /opt && git clone git://github.com/nginx/nginx && cd /opt/nginx && ./configure && make && make install

EXPOSE 8080
ADD nginx.conf /opt/nginx/nginx.conf
ENTRYPOINT [ "/usr/local/nginx/sbin/nginx", "-c", "/opt/nginx/nginx.conf", "-g", "daemon off;" ]
