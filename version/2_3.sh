#!/bin/bash -e

echo "================= Installing Python 2.3 ==================="

wget "https://www.python.org/ftp/python/2.3.7/Python-2.3.7.tgz"
tar -xf Python-2.3.7.tgz
cd Python-2.3.7
./configure
make altinstall
ln -s /usr/local/bin/python2.3 /usr/bin/python2.3 


echo "================= Successfully Installed Python 2.3 ==================="
