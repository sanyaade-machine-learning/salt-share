#!/bin/bash

USER=ubuntu
hostname=$1
if [ -z $hostname ]; then
    return
fi

sudo salt-key -d $hostname
scp scripts/rmkeys.sh $USER@$hostname:/home/$USER
ssh $USER@$hostname /home/$USER/rmkeys.sh
