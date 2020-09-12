FROM debian:buster

# install basic packages
RUN apt-get update -q && \
    apt-get install -qy \
        build-essential \
        gfortran \
        git \
        libx11-dev \
        vim \
        wget \
    && rm -rf /var/liv/apt/lists/*

# install xfoil
COPY setup_xfoil.sh \
     xfoil.patch \
     /

RUN /setup_xfoil.sh

ENV HOME /workspace
WORKDIR /workspace

VOLUME ["/workspace"]

