FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

RUN apk add shadow && usermod -u 1000 www-data && groupmod -g 1000 www-data

RUN docker-php-ext-install pdo pdo_mysql
