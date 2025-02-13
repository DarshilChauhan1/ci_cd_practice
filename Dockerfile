FROM node:22-slim

# Create app directory

WORKDIR /app

COPY package.json /app

RUN npm install

COPY ./src /app/src

COPY ./tsconfig.build.json /app

COPY ./tsconfig.json /app/

COPY ./nest-cli.json /app/

RUN npm install -g pm2

ENV NODE_ENV=production

EXPOSE 4000

CMD [ "npm", "run", "prod" ]









