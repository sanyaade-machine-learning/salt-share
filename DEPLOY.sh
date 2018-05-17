#!/bin/bash

HOST=$1
USER='ubuntu'
if [ -z $1 ]; then
    echo "Provide a hostname or IP of the minion"
    exit 1
fi
if [ ! -z $2 ]; then
    USER=$2
fi

ssh-keyscan $HOST >> /home/$USER/.ssh/known_hosts
if [[ "$hostname" == "iasalt" ]]; then
  scp scripts/iasaltinstall.sh $USER@$HOST:/home/$USER
else 
  scp scripts/saltinstall.sh $USER@$HOST:/home/$USER
fi
#scp scripts/saltinstall.sh $USER@$HOST:/home/$USER
ssh $USER@$HOST /home/$USER/saltinstall.sh
ssh $USER@$HOST rm /home/$USER/saltinstall.sh
