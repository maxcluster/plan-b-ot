# syntax=docker/dockerfile:1

FROM golang:alpine

WORKDIR /

COPY bot ./bot
COPY planbot.go ./
COPY config.json.example ./config/config.json

RUN GO111MODULE=auto go build planbot.go

EXPOSE 8782

CMD [ "/planbot" ]