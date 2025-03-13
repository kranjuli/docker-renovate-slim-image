# docker-renovate-slim-image
NodeJS docker image file with installed renovate via npm, no another renovate tools installed
This image will be used to run the renovate tool `renovate-config-validator` for validating
of renovate config files

## Build and push docker image to ghrc.io


````
cd docker-renovate-slim-image

# build docker image with the name "renovate-slim"
docker build -t renovate-slim .

# tagging docker image
docker tag kranjuli/renovate-slim ghcr.io/kranjuli/docker-renovate/renovate-slim:latest

# login in ghcr.io
docker login ghcr.io -u <kranjuli> -p <github_access_token_with_write_package_right>

# push docker image to ghcr.io
docker push ghcr.io/kranjuli/docker-renovate/renovate-slim:latest
````

---
**NOTE**

* Github Access Token can be created in Settings/Developer Settings
* "Write Packages" must be set at creating Github Access Token
* Docker Image will be displayed in tab "Packages"
---

## Run Dockerfile locally

````
# Download Dockerfile from "https://github.com/kranjuli/docker-renovate-slim-image/Dockefile"

# build docker image with the name "renovate-slim"
docker build -t renovate-slim .

# run docker image "renovate-slim"
docker run -it renovate-slim
````
