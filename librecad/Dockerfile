FROM debian:stretch-slim

RUN apt-get update
RUN apt-get install --no-install-recommends -y librecad
RUN apt-get autoclean && rm -rf /var/cache/apt/*

# drawings
VOLUME /data

# parts library
VOLUME /usr/share/librecad

# config
ENV HOME=/data/.librecad

ENTRYPOINT /usr/bin/librecad

