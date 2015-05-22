#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    apt-get update -y
    apt-get install python-pip python-dev -y
    pip install ansible
fi
cd /vagrant/

ansible-playbook -i ansible_hosts playbook.yml
