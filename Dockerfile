FROM php:5.6.17-apache

RUN apt-get update
RUN apt-get upgrade -y
RUN a2enmod rewrite
RUN pecl install xdebug-beta
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install imap
RUN docker-php-ext-enable xdebug
