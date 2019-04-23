FROM debian:buster-slim
#FROM debian:stretch-slim AS builder

RUN apt-get update
RUN apt-get install -y  curl rustc cargo zip 
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=864657#14
RUN apt-get install -y openjdk-11-jdk-headless
RUN rm -rf /var/cache/apt/* /var/lib/apt/lists/*

WORKDIR /opt
RUN curl http://icedtea.wildebeest.org/download/source/icedtea-web-1.8.tar.gz | \
	tar xzf -
WORKDIR /opt/icedtea-web-1.8
#RUN ./configure && make && make install
