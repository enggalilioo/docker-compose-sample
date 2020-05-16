ARG nodeVersion=6.17.1-alpine

FROM node:${nodeVersion}

EXPOSE 3000

WORKDIR /src/app

COPY . .

RUN npm install && npm cache clean --force

CMD [ "node", "index.js" ]