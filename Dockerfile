# Dockerfile

FROM python:3.10-alpine

LABEL maintainer="mapachana"

WORKDIR /app
COPY ./modules.txt /app/test/


RUN apk update; apk upgrade; ln -s /usr/bin/python /usr/bin/python3.10; addgroup -S testgroup && adduser -S test -G testgroup
USER test
WORKDIR /app/test

RUN pip install -r modules.txt; wget -q -O - "$@" https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

ENV PATH=$PATH:/home/test/.local/bin:/home/test/.poetry/bin

ENTRYPOINT ["poetry", "--version"]

