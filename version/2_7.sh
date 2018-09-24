#!/bin/bash -e

export PYTHON_2_7_15_VERSION=2.7.15
echo "================= Installing Python "$PYTHON_2_7_15_VERSION" ==================="
yum install gcc openssl-devel bzip2-devel
cd /usr/src
wget https://www.python.org/ftp/python/"$PYTHON_2_7_15_VERSION"/Python-"$PYTHON_2_7_15_VERSION".tgz
tar xzf Python-"$PYTHON_2_7_15_VERSION".tgz
cd Python-"$PYTHON_2_7_15_VERSION"
./configure --enable-optimizations
make altinstall
rm /usr/src/Python-"$PYTHON_2_7_15_VERSION".tgz

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.7 ==================="
