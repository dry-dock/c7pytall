#!/bin/bash -e

echo "================= Installing Python 3.2 ==================="

 wget "https://www.python.org/ftp/python/3.2.5/Python-3.2.5.tar.bz2"
 tar -xf Python-3.2.5.tar.bz2
 cd Python-3.2.5 
 ./configure 
 make 
 make altinstall
 ln -s /usr/local/bin/python3.2 /usr/bin/python3.2

echo "================= Successfully Installed Python 3.2 ==================="
