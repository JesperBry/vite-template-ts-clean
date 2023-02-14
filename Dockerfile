ARG  NODE_VERSION

FROM node:${NODE_VERSION}-alpine as base

WORKDIR /usr/src/app/client

COPY package*.json ./

EXPOSE 5173

# -- Dist stage --
FROM base as dist

WORKDIR /usr/src/app/client

RUN npm install

COPY . .

RUN npm run build

# -- Prod stage --
FROM nginx:latest as production

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY --from=dist /usr/src/app/client/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# -- Dev stage --
FROM base as dev

WORKDIR /usr/src/app/client

ENV NODE_ENV=development

RUN npm install --silent

COPY . .

CMD ["npm", "run", "dev"]