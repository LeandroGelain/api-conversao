FROM node:14.17-alpine3.12

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./

RUN npm install yarn && ./node_modules/.bin/yarn
RUN yarn

EXPOSE 8080

COPY . .

CMD ["yarn", "start"]