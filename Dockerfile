FROM node:18.18.0

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8001
CMD [ "npm", "run", "start:server" ]