# Ubuntu 15.04, MySQL, sudo, libx...
# Build image with: docker build -t base <path>
FROM ubuntu:15.04
MAINTAINER Celebrus
RUN apt-get update && \
apt-get upgrade -y && \
apt-get install -y software-properties-common && \
echo mysql-server mysql-server/root_password password root | /usr/bin/debconf-set-selections && \
echo mysql-server mysql-server/root_password_again password root | /usr/bin/debconf-set-selections && \
apt-get -y install mysql-server && \
apt-get -y install sudo && \
apt-get -y install libxext6 && \
apt-get -y install libxrender1 && \
apt-get -y install libxtst6 && \
apt-get -y install libxi6 && \
apt-get clean