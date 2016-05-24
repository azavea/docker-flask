FROM python:2.7-alpine

MAINTAINER Azavea <systems@azavea.com>

RUN \
      apk add --no-cache --virtual .build-deps \
          gcc \
          libc-dev \
          libevent-dev \
          linux-headers \
          # musl-dev \
          # python-dev \
      && apk add --no-cache postgresql-client \
      && pip install --no-cache-dir \
        gunicorn==19.4.5 \
        Flask==0.10.1 \
        gevent==1.1.1 \
      && apk del .build-deps

ENTRYPOINT ["gunicorn"]
