FROM alpine:latest

LABEL maintainer="yunsur <yunsur.shi@gmail.com>"

ENV LANG=zh_CN.UTF-8
ENV TZ=Asia/Shanghai
ENV SHELL=/bin/bash
ENV PS1="\u@\h:\w \$ "

RUN set -ex \
    && apk --no-cache --update add -f bash tzdata s6-overlay \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo "$TZ" > /etc/timezone \
    && echo "export LANG=$LANG" > /etc/profile.d/locale.sh \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/init"]
