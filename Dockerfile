FROM php:7-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN curl -L -o /tmp/Smarty.tar.gz https://github.com/smarty-php/smarty/archive/v3.1.30.tar.gz \
  && tar -zxvf /tmp/Smarty.tar.gz -C /usr/local/lib

COPY config/php.ini /usr/local/etc/php/php.ini
