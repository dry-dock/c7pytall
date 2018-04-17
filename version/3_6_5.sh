#!/bin/bash -e

echo "================= Installing Python 3.6.5 ==================="
# python 3.5 is already installed

# Install virtualenv
virtualenv -p python3.5 $HOME/venv/3.6.5

# Install pip packages
. $HOME/venv/3.6.5/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python 3.6.5 ==================="
