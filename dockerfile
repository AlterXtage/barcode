# Imagen oficial de Node.js
FROM node:20

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto del servidor (ajusta si tu app usa otro)
EXPOSE 3000

# Comando de inicio
CMD ["node", "app.js"]
