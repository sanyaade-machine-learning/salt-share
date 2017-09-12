#!/bin/bash
#rsync -avz --dry-run atlas:/srv/ /srv/
#rsync -avz atlas:/srv/ /srv/
i=$1
i=${i:-*}
sudo salt "$i" state.apply
