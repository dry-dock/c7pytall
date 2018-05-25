#!/bin/bash -e

echo "================= Installing Python 3.6 ==================="
# python 3.6 is already installed

# Install virtualenv
virtualenv -p python3.6 $HOME/venv/3.6.5

# Install pip packages
. $HOME/venv/3.6.5/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python 3.6 ==================="
