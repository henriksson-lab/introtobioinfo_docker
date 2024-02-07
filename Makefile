docker:
	docker build -t introtobioinfo_docker .
docker_testrun:
	#docker run --rm bioinfocourse
	docker run mahogny83/introtobioinfo_docker prokka
pull:
	docker image pull mahogny83/introtobioinfo_docker
