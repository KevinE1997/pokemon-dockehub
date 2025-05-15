FROM nginx:alpine

# Instala envsubst para reemplazar variables de entorno
RUN apk add --no-cache gettext

# Copia el HTML estático
COPY index.html /usr/share/nginx/html/

# Copia la plantilla de configuración de nginx
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copia el script de arranque personalizado
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Define el entrypoint como nuestro script
ENTRYPOINT ["/docker-entrypoint.sh"]
