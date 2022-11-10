FROM php:7.2-apache

#ENV APACHE_DOCUMENT_ROOT=/var/www/html
RUN apt-get update
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN echo "<Directory /var/www/>\nOptions Indexes FollowSymLinks\nAllowOverride All\nRequire all granted\n</Directory>\n" >> /etc/apache2/apache2.conf
