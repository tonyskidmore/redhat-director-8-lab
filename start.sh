#!/bin/bash

sudo yum makecache fast
sudo yum -y install http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install ansible git screen
git clone https://github.com/tonyskidmore/redhat-director-8-lab.git
cd redhat-director-8-lab

touch ansible.log
sudo ansible-playbook setup.yml
# read -p "Press any key to begin installation..."

screen -S "shared" -d -m
screen -r "shared" -X stuff $'ansible-playbook site.yml\n'
screen -x "shared"
