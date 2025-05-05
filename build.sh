docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -f Dockerfile.node.base . \
  -t andidans/node-awscli:22-slim \
  --push
