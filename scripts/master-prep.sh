#!/bin/bash

function createdir {
    if [[ ! -d "$1" ]]; then
        sudo mkdir "$1"
    fi
    sudo chown -R ubuntu:ubuntu "$1"
}

createdir /srv/salt
createdir /srv/pillar

