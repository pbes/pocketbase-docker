# Docker file & docker-compose config for Pocketbase

## Build image

`docker build --build-arg POCKETBASE_VERSION=0.7.9 -t pbes/pocketbase:0.7.9 .`

## Run application
1. set encryption key in ˙docker-compose.yml` to a random 32 char string
2. ˙docker compose up`