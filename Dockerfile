FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg

RUN which ffmpeg && ls -l $(which ffmpeg)

USER node
