FROM ubuntu:xenial
MAINTAINER Yutaka Kondo <yutaka.kondo@youtalk.jp>

RUN sed -i'~' -E "s@http://(..\.)?(archive|security)\.ubuntu\.com/ubuntu@http://ftp.jaist.ac.jp/pub/Linux/ubuntu@g" /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -yy && apt-get install -yy locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
