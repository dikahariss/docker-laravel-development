FROM php:8.3-fpm-alpine

WORKDIR /var/www/html

RUN apk add --no-cache \
    shadow \
    libzip-dev \
    zip \
    unzip \
    autoconf \
    gcc \
    g++ \
    make \
    && docker-php-ext-install pdo pdo_mysql zip opcache \
    && pecl install redis \
    && docker-php-ext-enable redis opcache

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

RUN apk del autoconf gcc g++ make \
    && rm -rf /tmp/* /var/cache/apk/*

COPY ./php/php.ini /usr/local/etc/php/php.ini
COPY ./php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN chown -R www-data:www-data /var/www/html

USER www-data

EXPOSE 9000

CMD ["php-fpm"]
