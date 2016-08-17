FROM python:2.7-slim

MAINTAINER Azavea <systems@azavea.com>

RUN set -ex \
    && buildDeps=" \
       g++ \
       gcc \
    " \
    && apt-get update && apt-get install -y ${buildDeps} --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir \
       gunicorn==19.6.0 \
       Flask==0.11.1 \
       gevent==1.1.1 \
    && apt-get purge -y --auto-remove ${buildDeps}

ENTRYPOINT ["gunicorn"]
