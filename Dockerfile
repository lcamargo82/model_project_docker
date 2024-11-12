FROM node:latest

RUN npm install -g pnpm

RUN npm install -g @nestjs/cli

RUN usermod -u 1000 node && groupmod -g 1000 node

WORKDIR /usr/src/app

RUN chown -R node:node /usr/src/app

USER node

EXPOSE 3000

CMD ["sh"]
