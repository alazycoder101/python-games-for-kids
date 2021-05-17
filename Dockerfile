FROM python:3.9-buster

LABEL maintainer="Lazy Coder<alazycoder101@gmail.com>"

RUN apt-get update
RUN apt-get install -y software-properties-common curl unzip build-essential pkg-config vim wget
#mercurial
RUN apt-get install -y python-dev python-pip libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsdl1.2-dev \
    libsmpeg-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev libplib-dev \
    libopenal-dev libalut-dev libvorbis-dev libxxf86vm-dev libxmu-dev libgl1-mesa-dev \
    python-pygame python3-pgzero

WORKDIR /opt/app

