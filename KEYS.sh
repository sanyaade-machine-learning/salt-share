#!/bin/bash

HOST=$1
user=ubuntu

if [ ! -d /root/.ssh/ ]; then
    mkdir /root/.ssh
fi

ssh-keyscan $HOST >> /root/.ssh/known_hosts
SCP="scp -i /home/ubuntu/.ssh/id_rsa"
SSH="ssh -i /home/ubuntu/.ssh/id_rsa"
$SCP scripts/keyminion.sh $user@$HOST:/home/$user/keyminion.sh
$SCP scripts/keywrapper.sh $user@$HOST:/home/$user/keywrapper.sh
key=$($SSH $user@$HOST /home/$user/keywrapper.sh)
echo $key >> /root/.ssh/authorized_keys
