FROM strapi/base:12-alpine

WORKDIR /app

COPY ./package*.json ./
RUN npm ci

ENV NODE_ENV production
COPY . .
RUN npm run build

EXPOSE 1337
CMD ["npm", "start"]
