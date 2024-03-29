FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app

ENV http_proxy=http://www-proxy-lon.uk.oracle.com:80
ENV https_proxy=http://www-proxy-lon.uk.oracle.com:80
RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
