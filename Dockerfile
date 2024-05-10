FROM node:20.8.0-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev
COPY ./src ./src
COPY ./videos ./videos

CMD npm start