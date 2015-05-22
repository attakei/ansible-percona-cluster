#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    yum install -y epel-release
    yum install -y ansible
fi
cd /vagrant/

ansible-playbook -i ansible_hosts playbook.yml
