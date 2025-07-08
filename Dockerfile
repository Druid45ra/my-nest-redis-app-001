# Imagine de bază
FROM node:20-alpine

# Setează directorul de lucru
WORKDIR /app

# Copiază fișierele de proiect
COPY package*.json ./
RUN npm install

COPY . .

# Expune portul aplicației (modifică dacă folosești alt port)
EXPOSE 3000

# Comanda de start
CMD ["npm", "run", "start:prod"]
