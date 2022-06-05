FROM php:8.1-cli-alpine as baseimage
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY . /opt/ows
RUN rm -rf /opt/ows/etc
WORKDIR /opt/ows
RUN composer install --no-dev

FROM php:8.1-cli-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache mysql mysql-client supervisor libtool && \
    addgroup mysql mysql && \
    docker-php-ext-install pdo_mysql
COPY etc /etc
COPY --from=baseimage /opt/ows /opt/ows
WORKDIR /opt/ows
VOLUME [ "/var/lib/mysql" ]
CMD [ "/bin/sh" , "/opt/ows/entrypoint.sh" ]
EXPOSE 6001

ENV OWS_APP_ID=1000
ENV OWS_APP_KEY=123456
ENV OWS_APP_SECRET=ThisIsMySecret

