FROM php:8.3-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy Composer files first
COPY composer.json composer.lock ./

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader --no-interaction

# Copy application
COPY . /var/www/html/

# Allow .htaccess overrides
RUN sed -i 's/AllowOverride None/AllowOverride All/g' \
    /etc/apache2/apache2.conf

# Set permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]