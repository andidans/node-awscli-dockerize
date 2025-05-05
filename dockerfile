FROM node:22-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends awscli wget && \
    rm -rf /var/lib/apt/lists/*

RUN aws --version
