FROM alpine:3.3
MAINTAINER laofuke <laofuke168@tutamail.com>
RUN apk add --update iproute2 && rm -rf /var/cache/apk/*
ENTRYPOINT ["ss"]
CMD []
