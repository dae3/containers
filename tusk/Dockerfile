FROM debian:jessie-slim

RUN apt-get update && apt-get install -y curl
RUN curl -LO https://github.com/klauscfhq/tusk/releases/download/v0.11.0/tusk_0.11.0_amd64.deb && dpkg --install -y tusk_0.11.0_amd64.deb && rm -f tusk_0.11.0_amd64.deb

