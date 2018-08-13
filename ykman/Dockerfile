FROM python:2.7-alpine

WORKDIR /yubikey-manager
COPY yubikey-manager /yubikey-manager/

RUN apk add --no-cache --virtual .build-deps gcc musl-dev swig pcsc-lite pcsc-lite-dev libffi-dev libressl-dev
RUN pip install -e .
RUN apk del .build-deps
RUN apk add libffi

COPY entrypoint.sh .

#ENTRYPOINT ["/yubikey-manager/entrypoint.sh"]
CMD ["ykman","--help"]
