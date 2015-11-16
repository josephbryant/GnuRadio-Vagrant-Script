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
apt-get --yes --force-yes install git-core
apt-get --yes --force-yes install g++
apt-get --yes --force-yes install python-dev
apt-get --yes --force-yes install pkg-config
apt-get --yes --force-yes install python-cheetah
apt-get --yes --force-yes install python-lxml
apt-get --yes --force-yes install libxi-dev
apt-get --yes --force-yes install python-sip
apt-get --yes --force-yes install libqt4-opengl-dev
apt-get --yes --force-yes install libfontconfig1-dev
apt-get --yes --force-yes install libxrender-dev
apt-get --yes --force-yes install python-sip
apt-get --yes --force-yes install python-sip-dev
apt-get --yes --force-yes install libboost-all-dev
apt-get --yes --force-yes install libusb-1.0-0-dev
apt-get --yes --force-yes install python-mako
apt-get --yes --force-yes install python-docutils


sudo pip install pyside

export PYTHONPATH=/opt/qt/lib/python2.7/dist-package

git clone --recursive http://git.gnuradio.org/git/gnuradio.git

cd gnuradio
mkdir build
cd build
cmake ..
sudo make
sudo make install

