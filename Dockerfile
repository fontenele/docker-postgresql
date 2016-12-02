FROM debian

MAINTAINER Guilherme Fontenele <guilherme@fontenele.net>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils net-tools wget nginx git vim \
	curl python-software-properties software-properties-common postgresql-9.5 postgresql-client-9.5 postgresql-contrib-9.5

RUN apt-get autoremove -y
RUN apt-get clean

RUN echo "service postgresql start" >> /root/.bashrc
RUN echo "alias l='ls -la'" >> /root/.bashrc

RUN echo "syntax on" >> /root/.vimrc
RUN echo "set nu" >> /root/.vimrc

EXPOSE 5432
