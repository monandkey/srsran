FROM ubuntu:18.04
LABEL monandkey <satoru070505@gmail.com>

RUN apt update \
    && apt install -y software-properties-common \
    && add-apt-repository ppa:softwareradiosystems/srsran \
    && apt update \
    && apt install -y srsenb
