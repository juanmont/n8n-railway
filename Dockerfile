# Usa la imagen oficial de n8n
FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Instala ffmpeg vía APK y añade el nodo comunitario
RUN apk update && \
    apk add --no-cache ffmpeg && \
    npm install --prefix /usr/local/lib/node_modules/n8n @saitrogen/n8n-nodes-ffmpeg

USER node
