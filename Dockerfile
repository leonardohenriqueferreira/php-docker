# IMAGE BASE
FROM php:7.2-apache

# UPDATE PACKAGES
RUN apt-get update
RUN apt-get upgrade

# GIT
RUN apt-get install -y git

# COMPOSER
COPY --from=composer:1.7 /usr/bin/composer /usr/bin/composer

# PORTAS
EXPOSE 80