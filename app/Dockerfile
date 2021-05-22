FROM node:slim

WORKDIR /myapp

COPY package.json /myapp/package.json

RUN npm install

RUN npm install -g nodemon

COPY . /myapp

EXPOSE 8080

CMD ["nodemon", "src/app.js"]
