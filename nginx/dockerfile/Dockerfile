FROM nginx:latest

ARG conf

COPY ./nginx/conf/nginx.conf  /etc/nginx/nginx.conf

WORKDIR /usr/local/tomcat/bin
CMD ["nginx", "-g", "daemon off;"]
