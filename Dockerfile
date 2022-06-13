FROM node:16.9.0

WORKDIR /app

COPY package*.json ./
COPY ./ /app

RUN npm install
RUN npm run build

CMD ["node", "/app/app/index.js"]