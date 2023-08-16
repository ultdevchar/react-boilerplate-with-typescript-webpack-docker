# Configuration for build
FROM node:18-alpine as builder
WORKDIR .

COPY . .
RUN npm ci
RUN npm run build

# Configuration for serving application
FROM nginx

ARG BUILD_FROM=dist
COPY --from=builder ${BUILD_FROM} /usr/share/nginx/html/
COPY config/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]