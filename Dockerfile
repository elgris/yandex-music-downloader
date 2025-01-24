FROM python:3.9-alpine

RUN apk add git && \
  pip install git+https://github.com/elgris/yandex-music-downloader && \
  mkdir /home/downloads

WORKDIR /home/downloads

ENTRYPOINT [ "yandex-music-downloader" ]