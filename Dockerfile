FROM ubuntu:15.04

MAINTAINER Vincent Palmer <shift@someone.section.me>

ONBUILD RUN apt-get update \
    && apt-get upgrade --force-yes --yes \
    && apt-get install --force-yes --yes software-properties-common \
    && rm -rf /var/lib/apt/lists/*
