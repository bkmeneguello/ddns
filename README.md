# About this Repo

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/bkmeneguello/ddns/)

This is the Git repo of a simple Docker [DDNS](https://en.wikipedia.org/wiki/Dynamic_DNS) service. Its based in [Alpine Linux](http://alpinelinux.org/) and [cli53](https://github.com/barnybug/cli53) to update periodically a [Route53](https://aws.amazon.com/pt/route53/) type "A" record.

## Required Environment Variables

    DDNS_DOMAIN
    DDNS_HOST
    AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXX
    AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Optional Environment Variables

    DDNS_API      : Must point to an URL that returns yous actual ip (defaults to https://api.ipify.org).
    DDNS_INTERVAL : Defines the interval between IP updates (defaults to 5m). The format is [1-9][0-9]*[smhd]
    DDNS_TTL      : Sets the "A" record Time To Live (defaults to 300).

## Usage

```
$ docker run -d -e DDNS_HOST=www -e DDNS_DOMAIN=example.com -e AWS_ACCESS_KEY_ID=****** -e AWS_SECRET_ACCESS_KEY=******* -v /etc/localtime:/etc/localtime:ro bkmeneguello/ddns
```
