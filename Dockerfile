# Usa una imagen base de NGINX para servir contenido estático
FROM nginx:alpine

# Instalar gettext para usar envsubst
RUN apk add --no-cache gettext

# Copia plantilla de configuración nginx
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copia tu app al directorio de NGINX
COPY . /usr/share/nginx/html

# Copia script de arranque
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Exponer el puerto por defecto de nginx
EXPOSE 80

# Usa script como entrypoint para reemplazar puerto y arrancar nginx
ENTRYPOINT ["/docker-entrypoint.sh"]