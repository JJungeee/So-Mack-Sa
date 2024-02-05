# 3Tier with Kubernetes

## SPEC

Tomcat version 8.5 for WAS Server

JDK version 1.8 for WAS Server

Nginx version latest for WEB Server

MySQL version 5.7 for DB Server

## DB Server

StatefulSet DB with XtraDB Container for Database Replication

Name of Master DB : mydb-0

Name of Slave DB (Super Read-Only) : mydb-1

Image for MySQL container : docker.io/maintndjs/db:v2.0

Image for XtraDB container : gcr.io/google-samples/xtrabackup:1.0

Ip for Master DB with Service : mydb-0.mydb

Ip for Slave DB (Super Read-Only) with Service : mydb-1.mydb

## WAS Server

Name of WAS server for Sale (With R/W DB) Deployment : mywas-sale

Name of WAS server for Purchase (With Super Read-Only DB) : mywas-purchase

Image for mywas-sale deployment : docker.io/maintndjs/was:v1.0 

-> for Rolling Update image : docker.io/maintndjs/was:v1.1

Image for mywas-purchase deployment : docker.io/maintndjs/was:v2.0

-> for Rolling Update imagae : docker.io/maintndjs/was:v2.1

Service for mywas-sale : mywas

Seriver for mywas-purchase : mywas2

## WEB Server

Name of WEB server for Sale : myweb-sale

Name of WEB server for Purchase : myweb-purchase

Image for myweb-sale deployment : docker.io/maintndjs/web:v1.0

Image for myweb-purchase deployment : docker.io/maintndjs/web:v2.0

Service for myweb-sale : myweb

Service for myweb-purchase : myweb2
