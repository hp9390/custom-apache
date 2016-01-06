FROM php:7.0.1-apache

RUN apt-get update
RUN apt-get upgrade -y
RUN a2enmod rewrite
RUN pecl install xdebug-beta
RUN pecl install apc
RUN docker-php-ext-enable apc
RUN docker-php-ext-enable xdebug
