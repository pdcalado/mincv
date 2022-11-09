FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-3.16

RUN apk update \
    && apk add --no-cache ruby-mustache busybox busybox-extras inotify-tools

ENV PATH="${PATH}:/usr/lib/ruby/gems/3.1.0/bin"
