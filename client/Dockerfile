FROM node:latest

COPY . /app

WORKDIR /app

RUN yarn global add @quasar/cli
RUN yarn install

CMD /bin/sh