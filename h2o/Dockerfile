# Dockerfile for h2o
# Version: 0.0.0

FROM        ubuntu:14.04
MAINTAINER  Naoki OKAMURA (Nyarla) <nyarla@thotep.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git build-essential
RUN mkdir -p /opt

# Install h2o dependences
RUN apt-get install -y cmake libssl-dev libyaml-dev libuv-dev dh-autoreconf

# Install wslay depndences
RUN apt-get install -y python-sphinx
RUN cd /opt && git clone git://github.com/tatsuhiro-t/wslay && cd /opt/wslay && git checkout release-0.1.1 && autoreconf -i && automake && autoconf && ./configure && make && make install

# Install h2o
RUN cd /opt && git clone git://github.com/kazuho/h2o && cd /opt/h2o && git submodule update --init --recursive && cmake . && make h2o

# Execute h2o
EXPOSE 8080
ADD run /opt/h2o/run
RUN chmod +x /opt/h2o/run

ENTRYPOINT [ "/opt/h2o/run" ]
