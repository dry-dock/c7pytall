#!/bin/bash -e

echo "================= Installing Python 2.7 ==================="
yum install -y python27u python27u-libs python27u-devel python27u-pip python27u-virtualenv

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.7 ==================="
