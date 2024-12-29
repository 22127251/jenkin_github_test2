FROM node:13-alpine

EXPOSE 80

RUN mkdir -p /usr/src/app

COPY example.html /usr/src/app