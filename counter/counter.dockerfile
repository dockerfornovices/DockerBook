FROM busybox:uclibc

# Build this image with `docker image build  --tag counter -  < counter.dockerfile`
# or `Get-Content Dockerfile | docker build -` in Powershell
# then run with "docker container run --rm -it counter"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "An image that counts"

CMD ["/bin/sh", "-c", "trap exit SIGTERM; while echo $(( m += 1)) ; do sleep 2 ; done"]
