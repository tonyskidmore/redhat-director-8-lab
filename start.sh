#!/bin/bash

sudo yum -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install ansible git screen
screen -d -R shared
git clone https://github.com/tonyskidmore/redhat-director-8-lab.git
cd redhat-director-8-lab
touch ansible.log
sudo ansible-playbook setup.yml
ansible-playbook site.yml

