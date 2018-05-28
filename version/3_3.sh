#!/bin/bash -e

echo "================= Installing Python 3.3 ==================="

 wget "https://www.python.org/ftp/python/3.3.7/Python-3.3.7.tgz"
 tar -xf Python-3.3.7.tgz
 rm Python-3.3.7.tgz
 
 pushd Python-3.3.7
   ./configure
   make
   make altinstall
   ln -s /usr/local/bin/python3.3 /usr/bin/python3.3 
popd

rm -rf Python-3.3.7

echo "================= Successfully Installed Python 3.3 ==================="
