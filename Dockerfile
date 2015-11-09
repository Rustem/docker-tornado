FROM python:2.7.10
MAINTAINER Rustem Kamun a.k.a "xepa4ep"

ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y python-dev build-essential libldap2-dev libsasl2-dev libssl-dev libxml2-dev libxslt1-dev

RUN mkdir /code
WORKDIR /code
ADD requires.txt /code/
RUN pip install -r requires.txt
EXPOSE 8889

