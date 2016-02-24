#!/bin/bash
#if [ ! pip freeze | grep ansible >/dev/null 2>/dev/null ]; then
    sudo dnf -y install python-setuptools python-devel redhat-rpm-config python-dnf libselinux-python
    sudo easy_install pip
    sudo pip install --upgrade pip
    sudo pip install ansible
#fi