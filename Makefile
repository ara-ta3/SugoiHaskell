all:
	echo "Please Install IHaskell https://github.com/gibiansky/IHaskell"

init:
	docker pull gibiansky/ihaskell:latest

run:
	open http://localhost:8888/
	docker run -it --volume $(shell pwd):/notebooks --publish 8888:8888 gibiansky/ihaskell:latest
