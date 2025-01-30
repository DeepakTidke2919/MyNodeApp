FROM node

LABEL app=my-node-app

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD node ./bin/www

