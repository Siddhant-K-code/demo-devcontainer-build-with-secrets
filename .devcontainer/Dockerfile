FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Accept build argument for the secret
ARG MY_PRIVATE_SECRET

# Demo: Show that secret is available during build
RUN echo "=== DEVCONTAINER BUILD DEMO ===" > /tmp/secret-demo.log && \
    echo "Build timestamp: $(date)" >> /tmp/secret-demo.log && \
    echo "Secret received during build: '$MY_PRIVATE_SECRET'" >> /tmp/secret-demo.log && \
    echo "Secret length: ${#MY_PRIVATE_SECRET}" >> /tmp/secret-demo.log && \
    echo "================================" >> /tmp/secret-demo.log

# Create a demo script that will show secret usage
RUN echo '#!/bin/bash' > /usr/local/bin/demo-secret && \
    echo 'echo "🔐 Secret Demo Script"' >> /usr/local/bin/demo-secret && \
    echo 'echo "Build-time secret log:"' >> /usr/local/bin/demo-secret && \
    echo 'cat /tmp/secret-demo.log' >> /usr/local/bin/demo-secret && \
    echo 'echo ""' >> /usr/local/bin/demo-secret && \
    echo 'echo "Runtime secret value: $MY_PRIVATE_SECRET"' >> /usr/local/bin/demo-secret && \
    echo 'echo "Secret is $([ -n "$MY_PRIVATE_SECRET" ] && echo "AVAILABLE" || echo "NOT SET")"' >> /usr/local/bin/demo-secret && \
    chmod +x /usr/local/bin/demo-secret

# Set environment variable to make secret available at runtime
ENV MY_PRIVATE_SECRET=$MY_PRIVATE_SECRET

# Install figlet for fancy output
RUN apt-get update && apt-get install -y figlet && rm -rf /var/lib/apt/lists/*
