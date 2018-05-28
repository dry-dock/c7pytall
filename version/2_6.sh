#!/bin/bash -e

echo "================= Installing Python 2.6 ==================="

 wget "https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz"
 tar -xf Python-2.6.9.tgz
 rm Python-2.6.9.tgz
 
pushd Python-2.6.9
  ./configure -q 
  make altinstall >/dev/null
  ln -s /usr/local/bin/python2.6 /usr/bin/python2.6
popd

rm -rf Python-2.6.9

echo "================= Successfully Installed Python 2.6 ==================="
