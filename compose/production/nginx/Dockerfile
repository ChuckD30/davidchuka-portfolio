FROM wernight/alpine-nginx-pagespeed
ADD ./compose/production/nginx/nginx.tmpl /etc/nginx/nginx.conf
ADD ./compose/production/nginx/mime.types /etc/nginx/mime.types
COPY ./compose/production/nginx/html /etc/nginx/html
EXPOSE 80 443