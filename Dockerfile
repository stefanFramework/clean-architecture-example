FROM node:18-alpine as development

WORKDIR /usr/src/app

COPY --chown=node:node ./app/package*.json .

RUN npm install --force

COPY --chown=node:node ./app .

EXPOSE $PORT

CMD [ "npm", "run", "start:dev"]