FROM strapi/base:12-alpine

ENV NODE_ENV production
WORKDIR /app

COPY ./package*.json ./
RUN npm ci

COPY admin ./
RUN npm run build

COPY . .

EXPOSE 1337
CMD ["npm", "start"]
