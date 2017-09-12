#!/bin/bash

host=$1

if [ -z $1 ]; then
    echo "Provide a hostname or IP of the minion"
    exit 1
fi

ssh-keygen -f /root/.ssh/known_hosts -R $host
ssh-keyscan -H $host >> /root/.ssh/known_hosts
ssh-keygen -f /home/ubuntu/.ssh/known_hosts -R $host
ssh-keyscan -H $host >> /home/ubuntu/.ssh/known_hosts
chown ubuntu:ubuntu /home/ubuntu/.ssh/known_hosts
salt-key -d $host
