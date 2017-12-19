FROM arm32v6/alpine:3.6

RUN apk add --no-cache curl &&\
    mkdir -p /usr/local/bin &&\
    curl -SL http://github.com/barnybug/cli53/releases/download/0.8.12/cli53-linux-arm -o /usr/local/bin/cli53 &&\
    chmod +x /usr/local/bin/cli53

ADD ddns /usr/local/bin/ddns

ENTRYPOINT ["ddns"]
