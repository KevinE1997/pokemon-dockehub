# Usa una imagen base de NGINX para servir contenido estático
FROM nginx:alpine

# Copia tu app al directorio de NGINX
COPY . /usr/share/nginx/html

# Exponer el puerto por defecto de nginx
EXPOSE 80

# Comando de inicio
CMD ["nginx", "-g", "daemon off;"]
