#!/bin/bash

# Install Ansible
sudo apt update
sudo apt install ansible

# Install Ansible modules
ansible-galaxy collection install -r requirements.yaml

#example
# REMOTE_USER=badass ansible-playbook install-docker.yaml -K

#create a brige to the host to use localhost to access to phpmyadmin
#ssh -N -L 3350:127.0.0.1:8080 -i ~/.ssh/id_rsa badass@127.0.0.1

# run ansible
# MYSQL_DATABASE doit etre a 'exampledb' pour marche il doit y avoir un fichier set quelque part ou il faut change exampledb en template
# REMOTE_USER=root MYSQL_USER=exampleuser MYSQL_PASSWORD=examplepass MYSQL_DATABASE=exampledb ansible-playbook cloud-1.yaml
