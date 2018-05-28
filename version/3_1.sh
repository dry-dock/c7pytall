#!/bin/bash -e

echo "================= Installing Python 3.1 ==================="

wget "https://www.python.org/ftp/python/3.1.5/Python-3.1.5.tgz"
tar -xf Python-3.1.5.tgz
cd Python-3.1.5
./configure
make
make altinstall
ln -s /usr/local/bin/python3.1 /usr/bin/python3.1


echo "================= Successfully Installed Python 3.1 ==================="
