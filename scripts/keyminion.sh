#!/bin/bash

echo "193.2.72.34 saltdrive" >> /etc/hosts
#if [ ! -f /root/.ssh/id_rsa ]; then
echo -e 'y\n' | ssh-keygen -f /root/.ssh/id_rsa -N '' -t rsa -b 2048 &>/dev/null
ssh-keyscan -H saltdrive,193.2.27.34 > /root/.ssh/known_hosts
#fi
cat /root/.ssh/id_rsa.pub
