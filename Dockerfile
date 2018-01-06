# FROM node:carbon-alpine
FROM node:boron-alpine

WORKDIR /usr/src

COPY ./web-app/package.json ./
COPY ./web-app/package-lock.json ./

RUN npm install

ENV PORT=5000
EXPOSE $PORT

COPY ./web-app ./

CMD ["npm", "run", "prod"]

