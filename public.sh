#!/bin/bash

#####################################################
# Public script to init a VPS for Scopea Odoo servers
#####################################################

apt update
apt install git

echo "scopea @ framagit password"
git clone https://scopea@framagit.org/scopea/infra.git

echo "coping files"
cp infra/ssh-keys.txt .ssh/authorized_keys
cp infra/odoo_install_debian.sh .
cp infra/backup_odoo.sh .
cp infra/caddy_odoo.sh .

echo "Edits script for configuration before launching them"
echo "Done"
