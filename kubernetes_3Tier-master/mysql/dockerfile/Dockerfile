FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=petclinic
ENV MYSQL_DATABASE=petclinic


ADD schema.sql /docker-entrypoint-initdb.d/deverse.sql
ADD db_user.sql /docker-entrypoint-initdb.d/db_user.sql

WORKDIR /home/dev

EXPOSE 3306