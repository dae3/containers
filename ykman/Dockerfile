FROM debian:stretch
RUN apt-get update
RUN apt-get -y install git automake autoconf libtool make asciidoc
RUN git clone https://github.com/Yubico/yubico-c
RUN git clone https://github.com/Yubico/yubikey-personalization
RUN git clone https://github.com/Yubico/yubikey-manager

WORKDIR /yubico-c
RUN autoreconf --install && ./configure && make check && make install
RUN apt-get install -y pkg-config
RUN apt-get install -y libusb-1.0-0-dev libjson-c-dev libjson-c3 
WORKDIR /yubikey-personalization
RUN autoreconf --install && ./configure && make check && make install

WORKDIR /ykman
COPY entrypoint.sh .

WORKDIR /yubikey-manager
RUN apt-get install -y python python-pip
RUN pip install -e .
RUN pip install pyusb

#ENTRYPOINT ["/yubikey-manager/entrypoint.sh"]
CMD ["ykman","--help"]
