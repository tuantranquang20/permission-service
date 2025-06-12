FROM node:18.18.1-alpine
RUN npm install -g npm@10.2.0
RUN mkdir -p /var/www/permission
WORKDIR /var/www/permission
ADD . /var/www/permission
RUN npm install
RUN npm run build
EXPOSE 8005 
CMD npm run start:prod
