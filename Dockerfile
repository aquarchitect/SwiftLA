FROM ibmcom/swift-ubuntu:latest 
MAINTAINER Hai Nguyen <aquarchitecture@me.com>
LABEL Description="Simple Todo List app"

RUN apt-get update && apt-get install -y openjdk-7-jdk libhttp-parser-dev libhiredis-dev libcurl4-openssl-dev

ENV APP todolist
RUN mkdir /root/$APP
RUN git clone -b todolist-common https://github.com/aquarchitect/SwiftLA /root/Common

ADD Package.swift /root/$APP
ADD Sources /root/$APP/Sources
