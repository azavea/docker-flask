FROM python:2.7-slim

MAINTAINER Azavea <systems@azavea.com>

RUN \
      apt-get update && apt-get install -y --no-install-recommends \
          build-essential \
      && pip install --no-cache-dir \
         gunicorn==19.6.0 \
         Flask==0.11 \
         gevent==1.1.1 \
      && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["gunicorn"]
