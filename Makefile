docker:
	docker build -t introtobioinfo_docker .
docker_testrun:
	#docker run --rm bioinfocourse
	docker run introtobioinfo_docker prokka
