FROM n8nio/n8n:latest

USER root

RUN apk update
# Install ffmpeg to /usr/local/bin (safe for node user)
RUN apk add ffmpeg

USER node
