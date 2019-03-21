FROM alpine:3.8
ARG gituser
ARG gitemail

RUN apk add alpine-sdk

# apk cache to avoid repeated downloads
# add local package directory as repo for interdependent packages
RUN mkdir -p /var/cache/apk && \
	ln -s /var/cache/apk /etc/apk/cache && \
	echo /home/builder/packages/testing >> /etc/apk/repositories && \
	apk update

# build user
RUN adduser --uid 1000 builder --disabled-password && \
	echo "builder ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers && \
	addgroup builder abuild
USER builder

# volume mounts
VOLUME /home/builder/aports
VOLUME /home/builder/packages

# git setup
RUN git config --global user.name "$gituser" && \
	git config --global user.email "$gitemail"
RUN git config --global credential.helper cache && \
	git config --global core.hooksPath .githooks
USER root
COPY prepare-commit-msg .git/hooks/
RUN chown builder.builder .git/hooks/prepare-commit-msg
RUN chmod u+x .git/hooks/prepare-commit-msg

# APK signing setup
USER builder
WORKDIR /home/builder
RUN abuild-keygen -a -i

CMD /bin/sh
