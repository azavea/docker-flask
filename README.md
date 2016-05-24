# docker-flask

[![Docker Repository on Quay.io](https://quay.io/repository/azavea/flask/status "Docker Repository on Quay.io")](https://quay.io/repository/azavea/flask)
[![Apache V2 License](http://img.shields.io/badge/license-Apache%20V2-blue.svg)](https://github.com/azavea/docker-flask/blob/develop/LICENSE)

A `Dockerfile` based off of [`python:2.7-alpine`](https://registry.hub.docker.com/_/python/) that installs dependencies for a Flask project with Gunicorn as the application server.

Includes:

  - Gevent
  - Gunicorn

## Usage

First, build the container image:

```bash
$ docker build -t quay.io/azavea/flask:latest .
```

Then, run the container:

```bash
$ docker run --rm --entrypoint pip quay.io/azavea/flask:latest freeze
Flask==0.10.1
gevent==1.1.1
greenlet==0.4.9
gunicorn==19.4.5
itsdangerous==0.24
Jinja2==2.8
MarkupSafe==0.23
Werkzeug==0.11.10
```
