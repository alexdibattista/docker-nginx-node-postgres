FROM node:10.1.0-alpine

WORKDIR /var/www/app

RUN npm install -g npm

EXPOSE 3000

CMD [ "npm", "start" ]
