FROM alpine:3.9

# gvim is still in edge as at April 2019
RUN sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories
RUN apk update && apk add gvim ttf-inconsolata

VOLUME /home
ENTRYPOINT ["gvim", "-f"]
