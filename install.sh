#!/bin/bash -e

export PYTHON_PIP=18.1
wget -nv https://bootstrap.pypa.io/3.3/get-pip.py
python get-pip.py
python -m pip install pip=="$PYTHON_PIP"

pip install -U pip setuptools

# Installing virtualenv-16.1.0
export PYTHONVIRTUALENV=16.1.0
echo "================= Installing python $PYTHONVIRTUALENV =============="
pip install -q virtualenv=="$PYTHONVIRTUALENV"

yum install -y zlib openssl bzip2-devel

for file in /c7pytall/version/*;
do
  $file
done
