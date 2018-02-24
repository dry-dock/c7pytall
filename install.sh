#!/bin/bash -e

# Installing pip-9.0.1
wget -nv https://bootstrap.pypa.io/3.2/get-pip.py
python get-pip.py
python -m pip install pip==8.1.2

pip install -U pip setuptools

# Installing virtualenv-15.1.0
wget -nv https://pypi.python.org/packages/d4/0c/9840c08189e030873387a73b90ada981885010dd9aea134d6de30cd24cb8/virtualenv-15.1.0.tar.gz#md5=44e19f4134906fe2d75124427dc9b716
tar xvfz virtualenv-15.1.0.tar.gz
cd virtualenv-15.1.0
python setup.py install
cd /

yum install -y zlib openssl bzip2-devel

for file in /c7pytall/version/*;
do
  $file
done
