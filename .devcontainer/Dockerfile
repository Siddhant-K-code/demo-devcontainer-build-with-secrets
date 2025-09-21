FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Accept build argument for the secret
ARG MY_PRIVATE_SECRET

# Use the secret during build (example: echo it to a file or use in commands)
RUN echo "Build-time secret received: $MY_PRIVATE_SECRET" > /tmp/build-secret.log

# Set environment variable to make secret available at runtime
ENV MY_PRIVATE_SECRET=$MY_PRIVATE_SECRET

# use this Dockerfile to install additional tools you might need, e.g.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
