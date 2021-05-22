FROM node:slim

RUN mkdir /app

WORKDIR /app

COPY ./package.json package.json

RUN npm install

RUN npm install -g nodemon

COPY ./app.js app.js

EXPOSE 8080

CMD ["nodemon", "app.js"]
