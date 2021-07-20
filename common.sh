#!/bin/bash

# Install the common packages needed
echo "Installing Extra Packages Repo and utils..."
sudo apt-get update -y
sudo apt-get install python-setuptools -y
sudo apt-get install python3-pip -y
pip install pip --upgrade
sudo apt-get install git pwgen  -y
sudo apt-get install -y nodejs npm
sudo npm install npm --global
echo "Completed the installation of Extra Packages Repo and utils..."
