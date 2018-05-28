#!/bin/bash -e

echo "================= Installing Python 3.4 ==================="

 wget "https://www.python.org/ftp/python/3.4.8/Python-3.4.8.tgz"
 tar -xf Python-3.4.8.tgz
 cd Python-3.4.8
 ./configure 
 make
 make altinstall
 ln -s /usr/local/bin/python3.4 /usr/bin/python3.4 

echo "================= Successfully Installed Python 3.4 ==================="
