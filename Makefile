build:
	docker build -t jack12816/docker:dind .

publish:
	docker push jack12816/docker:dind

clean:
	docker rmi -f jack12816/docker:dind
