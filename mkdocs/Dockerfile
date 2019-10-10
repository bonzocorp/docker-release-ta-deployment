FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y wget python
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN set -x && python get-pip.py

RUN pip install --upgrade pip
RUN pip install 'mkdocs==1.0.4'


ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

CMD ["/bin/sh"]


