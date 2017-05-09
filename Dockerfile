FROM ubuntu:xenial
MAINTAINER Yutaka Kondo <yutaka.kondo@youtalk.jp>

RUN echo "Asia/Tokyo" > /etc/timezone
RUN sed -i'~' -E "s@http://(..\.)?(archive|security)\.ubuntu\.com/ubuntu@http://ftp.jaist.ac.jp/pub/Linux/ubuntu@g" /etc/apt/sources.list
RUN apt-get update
