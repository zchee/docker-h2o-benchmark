#!/bin/sh

set -eu

echo "benchmark: h2o"
docker run -t -i nyarla/h2o-bench-wrk http://172.17.42.1:28080/
	
echo "benchmark: nginx"
docker run -t -i nyarla/h2o-bench-wrk http://172.17.42.1:28081/

