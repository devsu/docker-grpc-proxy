FROM golang:1.7-alpine

MAINTAINER Cesar Salazar "csalazar@devsu.com"

RUN apk update && apk upgrade && \
    apk add --no-cache git && \
    go-wrapper download github.com/devsu/grpc-proxy && \
    go-wrapper install github.com/devsu/grpc-proxy

RUN mkdir -p "/opt/grpc-proxy"
VOLUME ["/opt/grpc-proxy"]
WORKDIR "/opt/grpc-proxy"

CMD ["grpc-proxy"]

EXPOSE 50051
