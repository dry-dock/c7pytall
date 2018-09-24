#!/bin/bash -e

export PYTHON_3_7_0_VERSION=3.7.0
echo "================= Installing Python "$PYTHON_3_7_0_VERSION" =================="

yum install gcc openssl-devel bzip2-devel
cd /usr/src
wget https://www.python.org/ftp/python/"$PYTHON_3_7_0_VERSION"/Python-"$PYTHON_3_7_0_VERSION".tgz
tar xzf Python-"$PYTHON_3_7_0_VERSION".tgz
cd Python-"$PYTHON_3_7_0_VERSION"
./configure --enable-optimizations
make altinstall
rm -f /usr/src/Python-"$PYTHON_3_7_0_VERSION".tgz

# Install virtualenv
virtualenv -p python3.7 $HOME/venv/"$PYTHON_3_7_0_VERSION"

# Install pip packages
. $HOME/venv/"$PYTHON_3_7_0_VERSION"/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python "$PYTHON_3_7_0_VERSION" ==================="
