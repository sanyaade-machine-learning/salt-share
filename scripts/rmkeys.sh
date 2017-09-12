#!/bin/bash

if [ -f /etc/salt/pki/minion/minion* ]; then
    sudo rm /etc/salt/pki/minion/minion*
fi
sudo service salt-minion restart
