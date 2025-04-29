FROM node:18-slim

# Setup workdir (optional kalau cuma base)
WORKDIR /app

# Install AWS CLI v2 dependencies
RUN apt-get update && \
    apt-get install -y curl unzip groff less && \
    rm -rf /var/lib/apt/lists/*

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws

# Verify install (optional)
RUN aws --version
