FROM php:5.6-apache

RUN apt-get update && apt-get install -y build-essential libpq-dev && docker-php-ext-install pdo pdo_pgsql

COPY src/ /var/www/html
