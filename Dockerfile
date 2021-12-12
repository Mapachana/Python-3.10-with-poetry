# Dockerfile

FROM python:3.10-alpine

LABEL maintainer="mapachana"

WORKDIR /app

RUN apk update; ln -s /usr/bin/python /usr/bin/python3.10; addgroup -S testgroup && adduser -S test -G testgroup
USER test
WORKDIR /app/test

RUN pip install cleo tomlkit poetry.core requests cachecontrol cachy html5lib pkginfo virtualenv lockfile; wget -q -O - "$@" https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

ENV PATH=$PATH:/home/test/.local/bin:/home/test/.poetry/bin

ENTRYPOINT ["poetry", "--version"]

