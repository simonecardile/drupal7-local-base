FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    unzip \
    git \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    libonig-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        mysqli \
        gd \
    && a2enmod rewrite \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY docker/php/drupal.ini /usr/local/etc/php/conf.d/drupal.ini

WORKDIR /var/www/html
