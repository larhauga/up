#!/bin/bash
if [ -f /etc/redhat-release ]; then
    sudo yum -y install python-setuptools python-devel
    sudo easy_install pip
    sudo pip install ansible
fi

if [ -f /etc/lsb-release ]; then
    sudo apt-get --yes install ansible
fi