#!/bin/bash

#####################################################
# Public script to init a VPS for Scopea Odoo servers
#####################################################

echo "Updating server and installing git"
apt update
apt upgrade -y
apt install git vim -y

echo "Clonning infra scripts"
git clone -b unbuntu https://github.com/ScopeaFrance/infra.git 

echo "Installing keys for ssh access"
cp infra/ssh-keys.txt .ssh/authorized_keys

echo "Create config file"
cp infra/config.sh.template infra/config.sh

echo "Edit infra/config.sh for configuration"
echo "Done"
