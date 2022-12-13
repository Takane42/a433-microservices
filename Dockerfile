# Menggunakan Image https://hub.docker.com/_/node dengan versi node 14 dan base image alpine
FROM node:14-alpine

# Membuat dan menggunakan Directory /app sebagai working directory
WORKDIR /app

# Copy semua file yang berada di directory yang sama dengan dockerfile ke dalam folder /app di container
COPY . .

# Menambahkan Environtment NODE_ENV dan DB_HOST ke dalam environment image
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall Dependency yang digunakan oleh aplikasi dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Memberitahu User bahwa port yang digunakan adalah port 8080
EXPOSE 8080

# Menjalankan perintah untuk menjalankan aplikasi ketika container dibuat
CMD ["npm", "start"]
