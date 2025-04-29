FROM node:22-slim

# Install AWS CLI without recommended packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends awscli && \
    rm -rf /var/lib/apt/lists/*

# Verify AWS CLI install
RUN aws --version
