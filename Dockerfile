# TODO: add here
FROM node:22-slim

WORKDIR /app

COPY package*.json ./
RUN npm update -g npm
RUN npm install
RUN npx browserslist@latest --update-db

COPY . .

EXPOSE 3000

CMD ["npm", "start"]