FROM node:14-alpine

WORKDIR /app

COPY . .

RUN cd my-app/ && npm install && npm run build

RUN cd api/ && npm install

EXPOSE 3080

CMD [ "node", "api/server.js" ]
