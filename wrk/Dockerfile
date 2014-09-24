# Dockerfile for wrk
# Version: 0.0.0

FROM        ubuntu:14.04
MAINTAINER  Naoki OKAMURA (Nyarla) <nyarla@thotep.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y git build-essential
RUN mkdir -p /opt

RUN apt-get install -y libssl-dev

RUN cd /opt && git clone git://github.com/wg/wrk && cd /opt/wrk && make

ENTRYPOINT [ "/opt/wrk/wrk", "-c", "500", "-d", "30", "-t", "1" ]

