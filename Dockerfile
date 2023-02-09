FROM nginx:1.23.3-alpine-slim
WORKDIR /usr/share/nginx/html/
COPY ./public_html .
EXPOSE 8080
LABEL org.opencontainers.image.source https://github.com/angelocho/hello-amazon
