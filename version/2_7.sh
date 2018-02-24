#!/bin/bash -e

echo "================= Installing Python 2.7 ==================="
# python 2.7 is already installed
yum install -y python-devel-2.7.5-58.el7

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.7 ==================="
