# Start from the official n8n image you're already using
FROM n8nio/n8n:latest

# Switch to root to install system packages
USER root

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# Switch back to node user
USER node
