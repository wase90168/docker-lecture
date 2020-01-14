#!/usr/bin/env bash

# Install updates
apt-get update
apt-get upgrade -y

# Adding some empty lines for readability
echo ""; echo ""; echo ""

# Install Docker
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common python-pip python-setuptools -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get install docker-ce -y

# Installing docker-compose
pip install wheel
pip install docker-compose

# Adding some empty lines for readability
echo ""; echo ""; echo ""

# Installing the environment and downloading all necessary files
echo "Installing environment..."
mkdir /opt/sysad/
cd /opt/sysad/
git clone https://github.com/wase90168/docker-lecture.git
mkdir /opt/sysad/mysql-data
