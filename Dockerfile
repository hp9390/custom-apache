FROM php:7.0.0-apache

RUN apt-get update
RUN apt-get upgrade -y
RUN a2enmod rewrite
