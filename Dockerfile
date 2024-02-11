FROM node:lts-alpine as build
WORKDIR /app
COPY . /app
RUN npm install
ENV VITE_GOOGLE_MAPS_API_KEY AIzaSyAzl4VUS8OJGRTWotDkn8_4jLS6wv5AD-A
RUN npm run build

FROM --platform=amd64 nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
