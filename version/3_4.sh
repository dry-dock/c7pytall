#!/bin/bash -e

echo "================= Installing Python 3.4 ==================="

 wget "https://www.python.org/ftp/python/3.4.8/Python-3.4.8.tgz"
 tar -xf Python-3.4.8.tgz
 rm Python-3.4.8.tgz

 pushd Python-3.4.8
   ./configure -q
   make >/dev/null
   make altinstall >/dev/null
   ln -s /usr/local/bin/python3.4 /usr/bin/python3.4 
popd

rm -rf Python-3.4.8

echo "================= Successfully Installed Python 3.4 ==================="
