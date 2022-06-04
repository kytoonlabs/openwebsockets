FROM php:8.1-cli-alpine as baseimage

RUN apk update && apk upgrade && \
    apk add --no-cache mysql mysql-client supervisor

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . /opt/ows
WORKDIR /opt/ows

RUN composer install --no-dev


