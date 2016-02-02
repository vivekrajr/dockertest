FROM golang:1.5.3-alpine

ADD . /go/src/github.com/vivekrajr/dockertest

RUN go install github.com/vivekrajr/dockertest

ENTRYPOINT /go/bin/dockertest

EXPOSE 8080