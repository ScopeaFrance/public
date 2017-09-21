#!/bin/bash

#####################################################
# Public script to init a VPS for Scopea Odoo servers
#####################################################

echo "Updating server and installing git"
apt update
apt dist-upgrade
apt install git -y

echo "Clonning infra scripts"
git clone https://framagit.org/scopea/infra.git

echo "Installing keys for ssh access"
cp infra/ssh-keys.txt .ssh/authorized_keys

echo "Create config file"
cp infra/config.sh.template infra/config.sh

echo "Edit infra/config.sh for configuration"
echo "Done"
