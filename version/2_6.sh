#!/bin/bash -e

echo "================= Installing Python 2.6 ==================="

 wget "https://www.python.org/ftp/python/2.6.6/Python-2.6.6.tgz"
 tar -xf Python-2.6.6.tgz
 cd Python-2.6.6
./configure
 make install


echo "================= Successfully Installed Python 2.6 ==================="
