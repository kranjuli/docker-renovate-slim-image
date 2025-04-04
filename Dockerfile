FROM node:23-alpine

# we do not need a healthcheck here
HEALTHCHECK NONE

# switch to root user for user creation
USER root

# renovate: datasource=npm depName=renovate versioning=semver
<<<<<<< Updated upstream
ENV RENOVATE_VERSION=39.216.0
=======
ENV RENOVATE_VERSION=39.233.3
>>>>>>> Stashed changes

RUN npm install --global renovate@${RENOVATE_VERSION} && \
    npm cache clean --force

# switch to user node
USER node

WORKDIR /home/node
