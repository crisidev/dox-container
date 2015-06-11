FROM FROM debian:jessie
MAINTAINER Matteo Bigoi version: 0.1
RUN apt-get update && \
    apt-get -y install curl
RUN curl -o /opt/dox http://crisidev.org/dox
RUN curl -o /opt/config.json http://crisidev.org/config.json
WORKDIR /opt
ENTRYPOINT ["./dox", "-D"]
