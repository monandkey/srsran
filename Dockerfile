FROM ubuntu:18.04
LABEL monandkey <satoru070505@gmail.com>

RUN apt update && apt install -y \
    build-essential \
    cmake \
    libfftw3-dev \
    libmbedtls-dev \
    libboost-program-options-dev \
    libconfig++-dev \
    libsctp-dev \
    git

WORKDIR /
RUN git clone https://github.com/srsRAN/srsRAN.git \
    && cd srsRAN \
    && mkdir build \
    && cd build \
    && cmake ../ \
    && make \
    && make test \
    && make install \
    && srsran_install_configs.sh user

