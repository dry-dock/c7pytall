#!/bin/bash -e

echo "================= Installing Python 3.3 ==================="

 wget "https://www.python.org/ftp/python/3.3.7/Python-3.3.7.tgz"
 tar -xf Python-3.3.7.tgz
 cd Python-3.3.7
 ./configure
 make
 sudo make install




echo "================= Successfully Installed Python 3.3 ==================="
