FROM ubuntu:14.04

RUN apt-get update && \
    apt-get -y install \
    git-core \
    libpcre3 \
    libpcre3-dbg \
    libpcre3-dev \
    build-essential \
    autoconf \
    automake \
    libtool \
    libpcap-dev \
    libnet1-dev \
    libyaml-0-2 \
    libyaml-dev \
    zlib1g \
    zlib1g-dev \
    libcap-ng-dev \
    libcap-ng0 \
    make \
    libmagic-dev \
    libnetfilter-queue-dev \
    libnetfilter-queue1 \
    libnfnetlink-dev \
    libnfnetlink0 \
    libjansson-dev
