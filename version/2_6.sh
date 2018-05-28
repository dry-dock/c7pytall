#!/bin/bash -e

echo "================= Installing Python 2.6 ==================="

 wget "https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz"
 tar -xf Python-2.6.9.tgz
 cd Python-2.6.9
./configure
 make altinstall


echo "================= Successfully Installed Python 2.6 ==================="
