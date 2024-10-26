FROM node:18-buster

WORKDIR /usr/src/web

COPY . .

RUN npm install --quiet --no-optional --no-fund --loglevel=error

RUN chown -R node:node ./

RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "start" ]