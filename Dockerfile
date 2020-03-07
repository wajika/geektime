FROM python:3.7-alpine

RUN apk add --no-cache jpeg-dev zlib-dev
RUN apk add --no-cache --virtual .build-deps build-base linux-headers \
    && pip install Pillow
RUN pip install -U xxx
RUN ls /usr/local/
RUN ls /usr/local/python37/lib/
RUN ls /usr/local/python37/lib/python3.7/site-packages

#FROM ubuntu:latest
#COPY geektime /usr/bin/geektime

#WORKDIR /output
#ENTRYPOINT ["geektime"]
~                         
