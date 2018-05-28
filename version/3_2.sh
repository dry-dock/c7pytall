#!/bin/bash -e

echo "================= Installing Python 3.2 ==================="

 wget "https://www.python.org/ftp/python/3.2.5/Python-3.2.5.tar.bz2"
 tar -xf Python-3.2.5.tar.bz2
 rm Python-3.2.5.tar.bz2 
 
 pushd Python-3.2.5 
   ./configure -q 
   make >/dev/null
   make altinstall >/dev/null
   ln -s /usr/local/bin/python3.2 /usr/bin/python3.2
popd 

rm -rf Python-3.2.5 

echo "================= Successfully Installed Python 3.2 ==================="
