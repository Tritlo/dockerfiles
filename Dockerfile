FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y nfs-common

ENV VERSION=0.18
ADD https://github.com/ContainX/docker-volume-netshare/releases/download/v${VERSION}/docker-volume-netshare_${VERSION}_amd64.deb /docker-volume-netshare.deb
RUN dpkg -i /docker-volume-netshar.deb


ENTRYPOINT ["docker-volume-netshare"]
CMD ["efs"]
