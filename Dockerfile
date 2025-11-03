FROM node:lts-buster

WORKDIR /app

COPY package.json ./

RUN npm cache clean --force && npm install

COPY . .

CMD ["node", "index.js"]
