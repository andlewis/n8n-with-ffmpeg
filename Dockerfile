FROM n8nio/n8n

USER root
RUN apk upgrade -U \ 
    && apk add ca-certificates ffmpeg libva-intel-driver \
    && rm -rf /var/cache/*

RUN npm install -g @qdrant/js-client-rest fluent-ffmpeg assemblyai @langchain/community typescript
USER node