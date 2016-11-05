FROM alpine:3.4

ENV GOPATH /go
RUN apk add --no-cache curl git go make &&\
    go get github.com/barnybug/cli53 &&\
    cd $GOPATH/src/github.com/barnybug/cli53 &&\
    make install &&\
    rm -Rf $GOPATH/src /var/cache/apk/* &&\
    apk del git go make

ADD ddns /
ENTRYPOINT ["/ddns"]
