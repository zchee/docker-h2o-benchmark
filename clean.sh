#!/bin/sh

set -eux

docker kill h2o-bench-h2o
docker rm h2o-bench-h2o
docker kill h2o-bench-nginx
docker rm h2o-bench-nginx
