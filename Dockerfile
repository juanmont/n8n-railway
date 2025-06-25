FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Actualiza e instala ffmpeg
RUN apk update && apk add --no-cache ffmpeg

# Establece directorio de trabajo para instalar el paquete npm
WORKDIR /usr/local/lib/node_modules/n8n

# Instala el nodo comunitario
RUN npm i @saitrogen/n8n-nodes-ffmpeg

USER node
