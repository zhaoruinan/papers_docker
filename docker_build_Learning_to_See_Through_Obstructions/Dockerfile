FROM deephdc/tensorflow:1.10.0-py36
ENV DEBIAN_FRONTEND noninteractive
RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq wget curl git build-essential vim sudo lsb-release locales bash-completion tzdata gosu terminator libomp-dev libopencv-dev python3-opencv 
RUN apt-get update && \
    apt-get install -y \
    ant \
    ca-certificates-java \
    nano \
    openjdk-8-jdk \
    python2.7 \
    zip \
    unzip \
    rsync htop git openssh-server python-pip vim \
    wget && \
    apt-get clean
RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers    
COPY ./cmd.sh /cmd.sh
COPY ./cmd2.sh /home/ubuntu/
RUN mkdir -p /tmp/setup_scripts_ubuntu && mv /cmd.sh /tmp/setup_scripts_ubuntu/ && \
    gosu ubuntu /tmp/setup_scripts_ubuntu/cmd.sh && \
    rm -rf /var/lib/apt/lists/*
ENV USER ubuntu
    
