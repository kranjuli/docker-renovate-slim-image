FROM node:23-alpine

# we do not need a healthcheck here
HEALTHCHECK NONE

# switch to root user for user creation
USER root

# renovate: datasource=npm depName=renovate versioning=semver
ENV RENOVATE_VERSION=39.216.0

RUN npm install --global renovate@${RENOVATE_VERSION} && \
    npm cache clean --force

# switch to user node
USER node

WORKDIR /home/node
