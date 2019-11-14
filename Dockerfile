FROM ubuntu:18.04

RUN mkdir /builds && \
    useradd -ms /bin/bash builder & \
    apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    make \
    zip \
    curl \
    plantuml \
    texlive-latex-extra \
    texlive-fonts-recommended && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean

USER builder
WORKDIR /builds
