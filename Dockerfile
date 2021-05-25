FROM nginx:alpine

RUN mkdir /var/www
COPY dist/dockertest/* /var/www/
COPY nginx.conf /ect/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]