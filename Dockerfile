FROM ubuntu:18.04

RUN dpkg --add-architecture i386 && apt-get update && apt-get -y install wine32
COPY InnoSetup /inno-setup
COPY bin/iscc /usr/bin/iscc
RUN chmod +x /usr/bin/iscc