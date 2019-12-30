FROM alpine
LABEL "repository"="https://github.com/illallangi-actions/ytt-compile-action"
LABEL "homepage"="https://github.com/illallangi-actions/ytt-compile-action"
LABEL "maintainer"="Andrew Cole <andrew.cole@illallangi.com>"

COPY ./contrib/ytt-linux-amd64 ./contrib/ytt
RUN install ./contrib/ytt /usr/local/bin
COPY entrypoint.sh /entrypoint.sh

RUN apk update

ENTRYPOINT ["/entrypoint.sh"]