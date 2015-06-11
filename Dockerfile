FROM FROM debian:jessie
MAINTAINER Matteo Bigoi version: 0.1
RUN apt-get update && \
    apt-get -y install curl
RUN curl -o /usr/sbin/dox http://crisidev.org/dox
ENTRYPOINT ["/usr/sbin/dox", "-D"]
