FROM ibmcom/swift-ubuntu:05.03 
MAINTAINER Hai Nguyen <aquarchitecture@me.com>
LABEL Description="Simple Todo List app"

EXPOSE 8090

RUN apt-get update && apt-get install -y openjdk-7-jdk libhttp-parser-dev libhiredis-dev libcurl4-openssl-dev

ADD Package.swift /root/
ADD Backend /root/Backend
ADD Data /root/Data
