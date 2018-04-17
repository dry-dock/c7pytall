#!/bin/bash -e

# Installing pip-9.0.1
wget -nv https://bootstrap.pypa.io/3.3/get-pip.py
python get-pip.py
python -m pip install pip==8.1.2

pip install -U pip setuptools

# Installing virtualenv-15.1.0
wget -nv https://files.pythonhosted.org/packages/b1/72/2d70c5a1de409ceb3a27ff2ec007ecdd5cc52239e7c74990e32af57affe9/virtualenv-15.2.0.tar.gz
tar xvfz virtualenv-15.2.0.tar.gz
cd virtualenv-15.2.0
python setup.py install
cd /

yum install -y zlib openssl bzip2-devel

for file in /c7pytall/version/*;
do
  $file
done
