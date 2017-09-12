#!/bin/bash
./scripts/master-prep.sh
rsync -avz --dry-run salt /srv/
rsync -avz --dry-run pillar /srv/
echo "Is this ok? You have 5 seconds to cancel..."
sleep 5
rsync -avz salt /srv/
rsync -avz pillar /srv/
