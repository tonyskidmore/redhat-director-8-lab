#!/bin/bash

sudo yum -y install http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install ansible git screen
git clone https://github.com/tonyskidmore/redhat-director-8-lab.git
cd redhat-director-8-lab
touch ansible.log
sudo ansible-playbook setup.yml
read -p "Press any key to begin installation..."
screen -A -m -d -S "shared" "ansible-playbook site.yml"

