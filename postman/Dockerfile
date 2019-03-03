FROM debian:stretch
RUN apt-get update
RUN apt-get install -y --no-install-recommends libgtk2.0-0
RUN apt-get install -y --no-install-recommends libx11-xcb1 libxtst6 libxss1
RUN apt-get install -y --no-install-recommends libgconf-2-4
RUN apt-get install -y --no-install-recommends libnss3
RUN apt-get install -y --no-install-recommends libasound2

RUN rm -rf /var/cache/apt/* /var/lib/apt/lists/*
RUN mkdir /postman
WORKDIR /postman
COPY Postman-linux-x64-6.7.3.tar.gz .
RUN tar zxf Postman-linux-x64-6.7.3.tar.gz

VOLUME /home
CMD /postman/Postman/Postman
