# Imagen base con PHP y Nginx
FROM php:7.4-fpm

# Instalar Nginx
RUN apt-get update && apt-get install -y nginx

# Copiar la configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar el código PHP
COPY index.php /var/www/html/

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx y PHP-FPM
CMD service nginx start && php-fpm