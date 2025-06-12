FROM n8nio/n8n:latest

USER root

# Install minimal dependencies
RUN apk update && apk add --no-cache curl

# Download static ffmpeg build
RUN curl -L -o /usr/local/bin/ffmpeg https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz \
    && chmod +x /usr/local/bin/ffmpeg

USER node
