FROM ubuntu:18.04

RUN apt update && \
    apt install -y shadowsocks-libev && \
    apt autoremove

ENTRYPOINT ["/usr/bin/ss-server"]