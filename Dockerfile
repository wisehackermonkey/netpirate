# [Balena base images - Balena Documentation](https://www.balena.io/docs/reference/base-images/base-images/)
# FROM balenalib/rpi-raspbian:latest
FROM balenalib/raspberrypi3-python:3-stretch-run
WORKDIR /usr/src/app
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git make gcc  build-essential libgtk-3-dev libsdl2-dev zlib1g-dev liblua5.3-dev libgif-dev libsndfile1-dev  libsoxr-dev entr libsndfile-dev

RUN git clone  https://github.com/Kerrick/cwwav.git
WORKDIR /usr/src/app/cwwav
RUN make
RUN make install

WORKDIR /usr/src/app
RUN git clone https://github.com/Miegl/PiFmAdv.git
WORKDIR /usr/src/app/PiFmAdv/src
RUN make clean
RUN make
