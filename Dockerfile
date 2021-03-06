FROM node:14-alpine3.14

WORKDIR /src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
