FROM node:22-slim

# Install AWS CLI
RUN apt-get update && \
    apt-get install -y awscli && \
    rm -rf /var/lib/apt/lists/*

# Verify AWS CLI install
RUN aws --version
