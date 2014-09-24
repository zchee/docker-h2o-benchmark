all: build listen benchmark

build:
	@sh ./build.sh

listen:
	@sh ./listen.sh

benchmark:
	@sh ./benchmark.sh

clean:
	@sh ./clean.sh

