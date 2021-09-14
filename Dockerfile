FROM ubuntu:latest
MAINTAINER Yasser Saied <ysaied@cisco.com>
RUN apt-get update
RUN apt-get install -yqq net-tools
RUN apt-get install -yqq iproute2
RUN apt-get install -yqq tcpdump
RUN apt-get install -yqq traceroute
RUN apt-get install -yqq iputils-ping
RUN apt-get install -yqq iperf
RUN apt-get install -yqq systemd
RUN apt-get install -yqq socat
RUN apt-get install -yqq knot-host
RUN apt-get install -yqq mtr
RUN apt-get install -yqq nano
RUN apt-get install -yqq mtools
RUN apt-get install -yqq sudo
RUN apt-get install -yqq curl
RUN apt-get install -yqq apt-utils
RUN echo 'root:root' |chpasswd
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
