FROM n8nio/n8n:latest

USER root

# Install ffmpeg to /usr/local/bin (safe for node user)
RUN apk add --no-cache ffmpeg && \
    cp /usr/bin/ffmpeg /usr/local/bin/ffmpeg && \
    chown node:node /usr/local/bin/ffmpeg

USER node
