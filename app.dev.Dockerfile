FROM node:10.1.0-alpine

WORKDIR /var/www/app

EXPOSE 3000

CMD [ "npm", "start" ]
