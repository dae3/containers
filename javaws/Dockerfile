#FROM debian:buster-slim
FROM debian:stretch-slim AS builder

RUN apt-get update
RUN apt-get install -y  curl rustc cargo zip g++ libgcj-common 
RUN apt-get install -y vim-tiny
RUN mkdir /usr/share/man/man1
RUN apt-get install -y ecj
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y pkg-config libglib2.0-0 libglib2.0-dev
#RUN apt-get install -y 
#RUN apt-get install -y cups-devel freetype-devel libX11-devel

# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=864657#14
#RUN apt-get install -y openjdk-11-jdk-headless
#RUN rm -rf /var/cache/apt/* /var/lib/apt/lists/*

WORKDIR /opt
RUN curl http://icedtea.wildebeest.org/download/source/icedtea-web-1.8.tar.gz | \
	tar xzf -

RUN apt-get install -y --no-install-recommends bzip2
WORKDIR /opt
RUN curl http://ftp.mozilla.org/pub/mozilla.org/xulrunner/releases/1.9.0.17/runtimes/xulrunner-1.9.0.17.en-US.linux-i686.tar.bz2 | bunzip2 | tar xf -


WORKDIR /opt/icedtea-web-1.8
COPY entrypoint.sh .
#RUN make && make install

ENTRYPOINT /bin/bash
#CMD /opt/icedtea-web-1.8/entrypoint.sh
