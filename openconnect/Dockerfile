FROM debian:stretch-slim

# hack for what seems to be a temporary problem with deb.debian.org
RUN mv /etc/apt/sources.list /tmp/apt.source.list.old
RUN sed -e "s/deb.debian.org/ftp.au.debian.org/" < /tmp/apt.source.list.old > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y openconnect iproute2 iptables

COPY vpnc-script /var/

# for testing
#RUN apt-get install -y --no-install-recommends iputils-ping bind9-host tcpdump

ENTRYPOINT ["/usr/sbin/openconnect", "--script", "/var/vpnc-script",  "https://nsw-vpn.primaryhealthcare.com.au"]
