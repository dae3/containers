FROM debian:jessie-slim
RUN apt-get update
RUN apt-get install -y --no-install-recommends openconnect
RUN apt-get install -y --no-install-recommends iproute2
COPY vpnc-script /var/

CMD ["/usr/sbin/openconnect", "--script", "/var/vpnc-script", "-v", "https://nsw-vpn.primaryhealthcare.com.au"]
