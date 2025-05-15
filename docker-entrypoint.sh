#!/bin/sh

# Sustituye el puerto y lo inserta dentro de una configuración válida
envsubst '${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/conf.d/default.conf

# Ejecuta nginx en primer plano
exec nginx -g 'daemon off;'
