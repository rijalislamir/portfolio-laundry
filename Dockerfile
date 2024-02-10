FROM node:lts-alpine as build
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build

FROM --platform=amd64 nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80