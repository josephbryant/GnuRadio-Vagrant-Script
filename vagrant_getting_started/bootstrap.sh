#!/usr/bin/env bash

apt-get update
apt-get --yes --force-yes install python
apt-get --yes --force-yes install vim
apt-get --yes --force-yes install cmake
apt-get --yes --force-yes install python-pip
apt-get --yes --force-yes install libboost-all-dev
apt-get --yes --force-yes install libcppunit-dev
apt-get --yes --force-yes install git
apt-get --yes --force-yes install libfftw3-dev libfftw3-doc
apt-get --yes --force-yes install libgsl0ldbl
apt-get --yes --force-yes install swig
apt-get --yes --force-yes install libsdl2-2.0
apt-get --yes --force-yes install python-wxgtk2.8
apt-get --yes --force-yes install build-essential
apt-get --yes --force-yes install mesa-common-dev
apt-get --yes --force-yes install qt-sdk
apt-get --yes --force-yes install libqwt-dev
apt-get --yes --force-yes install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
apt-get --yes --force-yes install python-setuptools
apt-get --yes --force-yes install python-gtk2-dev
apt-get --yes --force-yes install doxygen
apt-get --yes --force-yes install doxygen-gui
apt-get --yes --force-yes install graphviz

sudo pip install pyside

wget https://gnuradio.org/releases/gnuradio/gnuradio-3.7.8rc1.tar.gz
tar -xvzf gnuradio-3.7.8rc1.tar.gz
cd gnuradio-3.7.8rc1.tar.gz
mkdir build
cd build
cmake ..

