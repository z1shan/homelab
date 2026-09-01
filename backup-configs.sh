#!/bin/bash

REPO="/home/zishan/github/homelab"

# Example config backup
# Change these paths to your actual config locations
cp /mnt/immichssf/docker-compose.yml  "$REPO/immich/immich-docker-compose.yml"
cp /home/zishan/glance/config/glance.yml "$REPO/glance/glance.yml"
cp /home/zishan/glance/config/home.yml "$REPO/glance/home.yml"
cp /home/zishan/glance/config/docker-compose.yml "$REPO/glance/docker-compose.yml"
cp /home/nginxpm/docker-compose.yml "$REPO/nginxpm/docker-compose.yml"
cp /home/beszel/docker-compose.yml "$REPO/beszel/docker-compose.yml"

cd "$REPO" || exit 1

git add .

if ! git diff --cached --quiet; then
    git commit -m "Auto-update configs - $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
fi

