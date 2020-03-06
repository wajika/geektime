FROM python:3.7-alpine

RUN apk add --no-cache jpeg-dev zlib-dev
RUN apk add --no-cache --virtual .build-deps build-base linux-headers \
    && pip install Pillow
RUN pip install -U geektime_dl

FROM ubuntu:latest
COPY geektime geektime

WORKDIR /output
ENTRYPOINT ["/bin/bash"]
