from mhart/alpine-node:latest
MAINTAINER Chance Hudson

RUN adduser -D duso
WORKDIR /home/duso

COPY ./ ./server
WORKDIR ./server

RUN npm install
RUN npm run build

CMD ["npm", "start"]
