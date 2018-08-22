FROM python:3-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev swig pcsc-lite-dev libffi-dev libressl-dev autoconf automake libtool git file make asciidoc libusb-dev
RUN apk add --no-cache libffi pcsc-lite pcsc-lite-libs libusb

RUN git clone https://github.com/Yubico/yubico-c
RUN cd yubico-c && autoreconf --install && ./configure && make install

RUN git clone https://github.com/Yubico/yubikey-personalization
RUN cd yubikey-personalization && autoreconf --install && ./configure && make install

RUN git clone https://github.com/Yubico/yubikey-manager
WORKDIR yubikey-manager
RUN pip install -e .
RUN pip install pyusb

# Python ctypes and Alpine ldconfig don't get along
# https://github.com/docker-library/python/issues/111
WORKDIR /usr/local/lib/python3.7/ctypes
RUN wget https://github.com/alpinelinux/aports/raw/master/main/python3/musl-find_library.patch && patch < musl-find_library.patch && rm -f musl-find_library.patch

RUN apk del .build-deps

COPY entrypoint-sh.sh /
RUN rm -rf /yubico-c
RUN rm -rf /yubikey-personalization

WORKDIR /
ENTRYPOINT ["/entrypoint-sh.sh"]
CMD ["ykman","--help"]
