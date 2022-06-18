FROM golang:1.18.3

ARG APP_VERSION=1.0.0

ENV GO111MODULE=on

RUN mkdir -p /app/configs
RUN mkdir -p /app/var/logs
RUN apt-get update

WORKDIR /app

RUN curl -sL https://github.com/<%- author %>/<%- package_name %>/releases/download/v${APP_VERSION}/<%- package_name %>_${APP_VERSION}_Linux_x86_64.tar.gz | tar xz
RUN rm LICENSE
RUN rm README.md

COPY ./config.dist.yml /app/configs/

EXPOSE 8000

VOLUME /app/configs
VOLUME /app/var

RUN ./<%- package_name %> version

CMD ["./<%- package_name %>", "server", "-c", "/app/configs/config.dist.yml"]