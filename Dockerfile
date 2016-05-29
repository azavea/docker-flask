FROM python:2.7-alpine

MAINTAINER Azavea <systems@azavea.com>

RUN \
      apk add --no-cache --virtual .build-deps \
          gcc \
          libc-dev \
          libevent-dev \
          linux-headers \
      && apk add --no-cache postgresql-client \
      && pip install --no-cache-dir \
        gunicorn==19.6.0 \
        Flask==0.11 \
        gevent==1.1.1 \
      && apk del .build-deps

ENTRYPOINT ["gunicorn"]
