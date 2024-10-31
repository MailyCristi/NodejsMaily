# Usar una imagen de Node.js como base
FROM node:18

# Crear un directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el archivo package.json y package-lock.json
COPY proyect-10/package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto del código fuente de la aplicación
COPY proyect-10 .

# Exponer el puerto de la aplicación de Node.js
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]


