# docker-renovate-slim-image
NodeJS docker image file with installed renovate via npm, no another renovate tools installed
This image will be used to run the renovate tool `renovate-config-validator` for validating
of renovate config files

# Run Dockerfile locally

````
# Download Dockerfile from "https://github.com/kranjuli/docker-renovate-slim-image/Dockefile"

# build docker image with the name "renovate-slim"
docker build -t renovate-slim .

# run docker image "renovate-slim"
docker run -it renovate-slim
````
