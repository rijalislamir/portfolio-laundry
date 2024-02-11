FROM node:lts-alpine as build
WORKDIR /app
COPY . /app
RUN npm install
ENV VITE_GOOGLE_MAPS_API_KEY ${VITE_GOOGLE_MAPS_API_KEY}
RUN npm run build

FROM --platform=amd64 nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
