#!/bin/bash

# Install Ansible
sudo apt update
sudo apt install ansible

# Install Ansible modules
ansible-galaxy collection install -r requirements.yaml

# Readme help
tput init; tput setaf 41; echo "Add ansible env variable for no host key checking:"
tput setaf 250; echo "  \`export ANSIBLE_HOST_KEY_CHECKING=False\`"; echo
tput setaf 41; echo "Set DB and Wordpress password:"
tput setaf 250; echo "  \`export MYSQL_ROOT_PASSWORD=plussimple; export MYSQL_USER=wordpress; export MYSQL_PASSWORD=password; export MYSQL_DATABASE=wordpress\`"; echo
tput setaf 41; echo "Execute Ansible playbook:"
tput setaf 250; echo "  \`ansible-playbook -i hosts cloud-1.yaml\`"

#example
# REMOTE_USER=badass ansible-playbook install-docker.yaml -K

#create a brige to the host to use localhost to access to phpmyadmin
#ssh -N -L 3350:127.0.0.1:8080 -i ~/.ssh/id_rsa badass@127.0.0.1
