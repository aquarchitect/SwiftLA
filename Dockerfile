FROM ibmcom/swift-ubuntu:latest
MAINTAINER Hai Nguyen <aquarchitecture@me.com>
LABEL Description="Simple Todo List app"

EXPOSE 8090

RUN apt-get update && apt-get install -y openjdk-7-jdk libhttp-parser-dev libhiredis-dev libcurl4-openssl-dev

ENV APP TodoList
RUN mkdir /root/$APP

ADD Package.swift /root/$APP
ADD Backend /root/$APP/Backend
ADD Data /root/$APP/Data
