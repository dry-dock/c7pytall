#!/bin/bash -e

echo "================= Installing Python 3.1 ==================="

wget "https://www.python.org/ftp/python/3.1.5/Python-3.1.5.tgz"
tar -xf Python-3.1.5.tgz
rm Python-3.1.5.tgz

pushd Python-3.1.5
  ./configure -q
  make >/dev/null
  make altinstall >/dev/null
  ln -s /usr/local/bin/python3.1 /usr/bin/python3.1
popd

rm -rf Python-3.1.5

echo "================= Successfully Installed Python 3.1 ==================="
