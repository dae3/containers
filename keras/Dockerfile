FROM python:3.7.2-stretch

RUN pip install keras graphviz pydot tensorflow ipython

VOLUME /home
ENV HOME=/home
WORKDIR /home

ENTRYPOINT ["/usr/local/bin/ipython"]
