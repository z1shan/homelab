#!/bin/bash

REPO="$HOME/zishan/homelab"

cp /etc/nginx/nginx.conf "$homelab"
cp /mnt/immichssf/docker-compose.yml "$homelab"

cd "$REPO" || exit 1

git add .

if ! git diff --cached --quiet; then
    git commit -m "Auto-update configs - $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
fi
