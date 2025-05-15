#!/bin/sh

# Sustituye ${PORT} en nginx.conf.template y lo guarda como nginx.conf
envsubst '${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Ejecuta nginx en primer plano
exec nginx -g 'daemon off;'
