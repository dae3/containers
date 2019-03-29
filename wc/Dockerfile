FROM jupyter/base-notebook

USER root
RUN apt-get update && apt-get install -y --no-install-recommends curl gnupg

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && apt-get update
RUN ACCEPT_EULA=Y apt-get install -y --no-install-recommends \
	msodbcsql17 vim-tiny openssl bind9-host binutils

RUN conda install -y anaconda pandas pyodbc

USER 1000
VOLUME /home/jupyter/work
ENV JUPYTER_ENABLE_LAB=yes

