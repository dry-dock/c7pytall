#!/bin/bash -e

echo "================= Installing Python  ==================="

wget "https://www.python.org/ftp/python/2.5.6/Python-2.5.6.tgz"
tar -xf Python-2.5.6.tgz
cd Python-2.5.6
./configure
make install


echo "================= Successfully Installed Python  ==================="
