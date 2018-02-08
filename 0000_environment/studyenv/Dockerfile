FROM wataken44/ubuntu-latest-sshd
LABEL maintainer "wataken44"

ENV DOCKER "YES"
ENV LANG C.UTF-8


RUN set -xe \
    && apt update -y \
    && apt dist-upgrade -y \
    && apt install -y python3

RUN set -xe \
    && echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | tee /etc/apt/sources.list.d/azure-cli.list \
    && apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893 \
    && apt install -y apt-transport-https \
    && apt update \
    && apt install -y azure-cli

RUN set -xe \
    && apt install -y git \
    && cd /home/ubuntu \
    && git clone https://github.com/wataken44/azure-study \
    && chown -R ubuntu:ubuntu azure-study
