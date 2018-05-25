#!/bin/bash -e

echo "================= Installing Python 3.2 ==================="

 wget "https://www.python.org/ftp/python/3.2.5/Python-3.2.5.tar.bz2"
 tar -xf Python-3.2.5.tar.bz2
 cd Python-3.2.5 
 ./configure 
 make 
 sudo make install


echo "================= Successfully Installed Python 3.2 ==================="
