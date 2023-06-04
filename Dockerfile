FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --force

RUN chown -R node:node /usr/src/app/node_modules

COPY . .

EXPOSE 3000

CMD ["npm","start"]
