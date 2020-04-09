#!/bin/bash
#
# Install ROOT CERN for Ubuntu


# Yum update/upgrade
sudo apt update
sudo apt -y upgrade


# Yum install
sudo apt-get install -y git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
libxft-dev libxext-dev
sudo apt-get install -y gfortran libssl-dev libpcre3-dev \
xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
libmysqlclient-dev libfftw3-dev libcfitsio-dev \
graphviz-dev libavahi-compat-libdnssd-dev \
libldap2-dev python-dev libxml2-dev libkrb5-dev \
libgsl0-dev libqt4-dev


# Download ROOT
cd /opt
mkdir root && cd root
wget https://root.cern/download/root_v6.20.04.source.tar.g
tar zxf root_v6.20.04.source.tar.gz
mv root-6.20.04/ 6.20.04


# Build
mkdir 6.20.04-build && cd 6.20.04-build/

