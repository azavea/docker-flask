# docker-flask

This repository contains a collection of templated `Dockerfile` for image variants designed to support Flask through the Gunicorn WSGI HTTP server.

## Usage

### Template Variables

- `PYTHON_VERSION` - Python interpreter version
- `VARIANT` - Base container image variant

### Testing

An example of how to use `cibuild` to build and test an image:

```bash
$ CI=1 VERSION=1.1 PYTHON_VERSION=3.7 VARIANT=alpine \
  ./scripts/cibuild
```
