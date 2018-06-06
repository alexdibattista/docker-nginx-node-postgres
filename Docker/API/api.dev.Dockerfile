FROM node:10.1.0-alpine
RUN apk add --update --no-cache bash git g++ gcc libgcc libstdc++ linux-headers make python && rm -rf /var/cache/apk/*

RUN npm install -g nodemon
RUN npm install -g npm

WORKDIR /var/www/api

EXPOSE 8080

