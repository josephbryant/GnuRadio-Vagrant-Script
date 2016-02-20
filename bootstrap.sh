#!/usr/bin/env bash

apt-get update

#Everything below here is mentioned as being a prereq for 
#GNURadio except Vim, Vim is just swell. Love Vim.
$ sudo dnf install fftw-devel cppunit-devel wxPython-devel libusb-devel \
  guile boost-devel alsa-lib-devel numpy gsl-devel python-devel pygsl \
  swig python-sphinx orc-devel orc-compiler doxygen python-docutils \
  python-cheetah python-lxml guile-devel PyOpenGL PyQt4-devel qwt-devel \
  qwtplot3d-qt4-devel cmake xmlto graphviz PyQwt PyQwt-devel zeromq2-devel \
  python-zmq SDL-devel cmake make gcc gcc-c++ boost-devel scipy \
  thrift-devel python-thrift python-mako gpsd-devel

sudo pip install pyside

#These were to allow for qt to work, but seem to be errors
export PYTHONPATH=$PYTHONPATH:/opt/qt/lib/python2.7/dist-package
export PYTHONPATH=$PYTHONPATH:/usr/bin/python


#remove standard packages of UHD if they are there
sudo dnf remove -y libuhd-dev
sudo dnf remove -y libuhd003
sudo dnf remove -y uhd-host

#Install UHD Using Ettus Repos
sudo bash -c 'echo "deb http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/`lsb_release -cs` `lsb_release -cs` main" > /etc/apt/sources.list.d/ettus.list'
sudo dnf upgrade
sudo dnf install - `lsb_release -cs` uhd

git clone --recursive http://git.gnuradio.org/git/gnuradio.git

#Here we build gnuradio from sources
#This will be the longest process
cd gnuradio
mkdir build
cd build
cmake ..
sudo make
sudo make install

sudo ldconfig


##Now we will download gr-mac
cd ..
cd ..
git clone https://github.com/balint256/gr-mac.git
cd gr-mac
mkdir build
cd build
cmake ..
sudo make
sudo make install

sudo ldconfig

##Which also needs gr-foo
cd ..
cd ..
git clone https://github.com/bastibl/gr-foo.git
cd gr-foo
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig


#RTL Driver
cd ..
cd ..
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
sudo make
sudo make install
sudo ldconfig

#RTL-GNU Radio Pluging
cd ..
cd ..
git clone git://git.osmocom.org/gr-osmosdr
cd gr-osmosdr/
mkdir build
cd build/
cmake ../
make
sudo make install
sudo ldconfig




