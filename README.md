# Docker file & docker-compose config for Pocketbase

## Build image

`docker build --build-arg POCKETBASE_VERSION=0.7.9 -t pbes/pocketbase:0.7.9 .`

## Run application
* set encryption key in `docker-compose.yml` to a random 32 char string
* `docker compose up`
* set dummy email SMTP server in _Settings > Mail settings_ (Mailhog runs on localhost:1025)