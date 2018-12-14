# IMAGE BASE
FROM php:7.2-apache

# DIRECTORY
COPY . /var/www/html
WORKDIR /var/www/html

# UPDATE PACKAGES
RUN apt-get update
RUN apt-get upgrade

# GIT
RUN apt-get install -y git

# COMPOSER
COPY --from=composer:1.7 /usr/bin/composer /usr/bin/composer

# LARAVEL
RUN composer global require laravel/installer

# PORTS
EXPOSE 80