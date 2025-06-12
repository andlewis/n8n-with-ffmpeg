FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache ffmpeg

RUN which ffmpeg && ffmpeg -version

RUN ln -s /usr/bin/ffmpeg /usr/local/bin/ffmpeg

USER node
