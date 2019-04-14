FROM debian:stretch as builder
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
	libncurses5-dev libgnome2-dev libgnomeui-dev \
	libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
	libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
	python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git \
	gcc make

RUN mkdir /build
WORKDIR /build
RUN git clone https://github.com/vim/vim.git
WORKDIR vim
RUN ./configure --with-features=huge \
				--enable-multibyte \
				--enable-rubyinterp=yes \
				--enable-pythoninterp=yes \
				--with-python-config-dir=/usr/lib/python2.7/config \
				--enable-python3interp=yes \
				--with-python3-config-dir=/usr/lib/python3.5/config \
				--enable-perlinterp=yes \
				--enable-luainterp=yes \
				--enable-gui=gtk2 \
				--enable-cscope \
				--prefix=/usr/local

RUN make VIMRUNTIMEDIR=/usr/local/share/vim/vim81

FROM debian:stretch-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
	make binutils libgtk2.0 libxt6 liblua5.1-0
RUN apt-get update && apt-get install -y --no-install-recommends \
	libacl1 \
	libc6 \
	libcairo2 \
	libgdk-pixbuf2.0-0 \
	libglib2.0-0 \
	libgpm2 \
	libgtk-3-0 \
	libice6 \
	liblua5.2-0 \
	libpango-1.0-0 \
	libpangocairo-1.0-0 \
	libperl5.24 \
	libpython3.5 \
	libruby2.3 \
	libselinux1 \
	libsm6 \
	libtcl8.6 \
	libtinfo5 \
	libx11-6 \
	libxt6

RUN mkdir /build
#COPY --from=builder /build

