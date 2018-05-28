#!/bin/bash -e

echo "================= Installing Python 2.3 ==================="

wget "https://www.python.org/ftp/python/2.3.7/Python-2.3.7.tgz"
tar -xf Python-2.3.7.tgz
rm Python-2.3.7.tgz

pushd Python-2.3.7
  ./configure -q
  make altinstall >/dev/null
  ln -s /usr/local/bin/python2.3 /usr/bin/python2.3 
popd

rm -rf Python-2.3.7

echo "================= Successfully Installed Python 2.3 ==================="
