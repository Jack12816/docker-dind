Because of: https://github.com/docker-library/docker/pull/12
Dockerfile: https://github.com/Jack12816/docker-dind

---

This is image is dedicated to the missing `DOCKER_DAEMON_ARGS` environment
variable support on the [official docker
image](https://hub.docker.com/_/docker/). The image is based on it and just
adds this support.

## Custom daemon flags

### Via entrypoint arguments
```
$ docker run --privileged \
  --name some-devicemapper-docker \
  -d jack12816/docker:dind --storage-driver=devicemapper
```

### Via environment vairable
```
$ docker run  --privileged \
  --name some-devicemapper-docker \
  -e DOCKER_DAEMON_ARGS=--registry-mirror=http://mymirror:6000 \
  -d jack12816/docker:dind
```
