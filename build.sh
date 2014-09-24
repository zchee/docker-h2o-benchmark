#!/bin/sh

set -eux

cd h2o && docker build -t nyarla/h2o-bench-h2o . && cd ../
cd nginx && docker build -t nyarla/h2o-bench-nginx . && cd ../
cd wrk && docker build -t nyarla/h2o-bench-wrk . && cd ../
