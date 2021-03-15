# development environment
FROM node:12.10.0 AS dev
WORKDIR /app
ENV NODE_ENV=development
COPY package*.json ./
RUN npm install --global yarn && yarn install
COPY . .

# build environment
FROM dev AS build
ENV NODE_ENV=production
RUN yarn build

# production environment
FROM node:12.10.0 AS production
RUN npm install serve -g
COPY --from=build /app/dist .
EXPOSE 8080
CMD serve -s . -p 8080
