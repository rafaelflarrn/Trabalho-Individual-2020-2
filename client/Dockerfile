FROM node:alpine

RUN yarn global add @quasar/cli
RUN yarn install
RUN mkdir /home/node/app
RUN quasar dev

WORKDIR /home/node/app

CMD /bin/sh