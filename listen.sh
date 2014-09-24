#!/bin/sh

docker run -d --name h2o-bench-h2o -p 172.17.42.1:28080:8080 nyarla/h2o-bench-h2o 
docker run -d --name h2o-bench-nginx -p 172.17.42.1:28081:8080 nyarla/h2o-bench-nginx

