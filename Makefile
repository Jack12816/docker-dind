build:
	docker build -t jack12816/docker:dind .

publish:
	docker push jack12816/docker:dind

clean:
	docker rmi -f jack12816/docker:dind

test:
	docker run --rm --privileged \
		-e "DOCKER_DAEMON_ARGS=--registry-mirror=http://0.0.0.0:6000" \
		-e "DOCKER_DAEMON_STORAGE=overlay2" \
		jack12816/docker:dind

shell:
	# The start script is: /usr/local/bin/dockerd-entrypoint.sh
	docker run -it --rm --privileged \
		-e "DOCKER_DAEMON_ARGS=--registry-mirror=http://0.0.0.0:6000" \
		-e "DOCKER_DAEMON_STORAGE=overlay2" \
		jack12816/docker:dind sh
