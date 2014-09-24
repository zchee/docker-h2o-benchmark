all: build listen benchmark

build:
	cd h2o && docker build -t nyarla/h2o-bench-h2o . && cd ../
	cd nginx && docker build -t nyarla/h2o-bench-nginx . && cd ../
	cd wrk && docker build -t nyarla/h2o-bench-wrk . && cd ../

listen:
	docker run -d --name h2o-bench-h2o -p 127.0.0.1:28080:8080 nyarla/h2o-bench-h2o 
	docker run -d --name h2o-bench-nginx -p 127.0.0.1:28081:8080 nyarla/h2o-bench-nginx

benchmark:
	@
clean:
	docker kill h2o-bench-h2o
	docker rm h2o-bench-h2o
	docker kill h2o-bench-nginx
	docker rm h2o-bench-nginx
