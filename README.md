# Python 3.10 with poetry

> By Mapachana

## About the repo

This repository contains the dockerfile that uses Python 3.10 and Poetry based on an alpine distribution.

## Why?

As you can see [here](https://github.com/python-poetry/poetry/issues/553) poetry does not work well with python 3.10 if you want to install it using curl or wget.

If you don't want to use docker, the list of modules that are missing and are needed for the installation of poetry are listed [here](https://www.youtube.com/watch?v=dQw4w9WgXcQ).

You can install them using pip.

## How to use the docker container

You can download the dockerfile and modify it so it matches your needs, or you can download the image from [here](https://www.youtube.com/watch?v=dQw4w9WgXcQ).