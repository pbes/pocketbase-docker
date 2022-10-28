FROM alpine:3.16

RUN mkdir -p /pocketbase/{public,data}

ARG POCKETBASE_VERSION=0.7.9

WORKDIR /tmp
RUN apk add --no-cache wget unzip
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v${POCKETBASE_VERSION}/pocketbase_${POCKETBASE_VERSION}_linux_amd64.zip -O pocketbase.zip

RUN unzip pocketbase.zip
RUN mv pocketbase /pocketbase/pocketbase
RUN chmod +x /pocketbase/pocketbase

RUN rm -rf /tmp/*
RUN apk --purge del wget unzip apk-tools

WORKDIR /pocketbase

EXPOSE 8090

CMD [ "/pocketbase/pocketbase", "serve", "--encryptionEnv", "PB_ENCRYPTION_KEY", "--dir", "/pocketbase/data", "--publicDir", "/pocketbase/public", "--http", "0.0.0.0:8090" ]