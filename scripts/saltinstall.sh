#!/bin/bash

curl -L https://bootstrap.saltstack.com -o /tmp/install_salt.sh
sudo sh /tmp/install_salt.sh -P -M
hostname=$(cat /etc/hostname)
if [[ "$hostname" == "iasalt" ]]; then
  sudo sed -i 's/^#\?master:\ .*/master:\ 192.168.245.34/' /etc/salt/minion
else 
  sudo sed -i 's/^#\?master:\ .*/master:\ 192.168.27.74/' /etc/salt/minion
fi
sudo service salt-minion restart
sudo service salt-master restart
