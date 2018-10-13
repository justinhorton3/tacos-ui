FROM nginx:stable-alpine
LABEL author="Justin Horton"
COPY ./dist/tacos-ui /var/www
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT ["nginx","-g","daemon off;"]