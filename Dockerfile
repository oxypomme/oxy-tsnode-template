FROM node:18-alpine as base

ENV NODE_ENV=production

WORKDIR /app

# Install deps
COPY ./package.json ./yarn.lock .
RUN yarn install --immutable --immutable-cache --check-cache
COPY . .

CMD yarn start
