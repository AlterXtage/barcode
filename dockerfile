FROM node:20-slim

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos necesarios
COPY package*.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que usa la app (ajusta si usas otro)
EXPOSE 3000

# Comando para iniciar la app
CMD ["node", "app.js"]
