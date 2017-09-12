#!/bin/bash

curl -L https://bootstrap.saltstack.com -o /tmp/install_salt.sh
sudo sh /tmp/install_salt.sh -P -M 
sudo sed -i 's/^#\?master:\ .*/master:\ 193.2.72.34/' /etc/salt/minion
#sudo shutdown -r now
sudo service salt-minion restart
sudo service salt-master restart
