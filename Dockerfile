FROM ctftraining/base_image_nginx_mysql_php_56

LABEL Author="glzjin <i@zhaoj.in>" Blog="https://www.zhaoj.in"

COPY ./files /tmp/
RUN cp -rf /tmp/html/ /var/www/ \
    && rm -f /var/www/html/index.php \
    && chown -R www-data:www-data /var/www/html \
    && sed -i 's/index index.php/index index.html index.php/' /etc/nginx/nginx.conf
