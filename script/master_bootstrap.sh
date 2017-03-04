#!/bin/bash

# locale
sudo localectl set-locale LANG=ja_JP.utf8
sudo localectl status

# timezone
sudo timedatectl set-timezone Asia/Tokyo
sudo timedatectl status

# git
sudo yum install -y git
git --version

# epel-release
sudo yum install -y epel-release

# ansible
sudo yum install -y ansible
ansible --version

# ansible sample clone ( https://github.com/devops-book/ansible-playbook-sample )
git clone https://github.com/devops-book/ansible-playbook-sample /opt/ansible-playbook-sample

