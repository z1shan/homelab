#!/bin/bash

REPO="/home/zishan/github/homelab"

# Go to repository
cd "$REPO" || exit 1

# Get latest changes from GitHub
git pull --rebase origin main || exit 1

# Copy configuration files
cp /home/zishan/glance/config/glance.yml "$REPO/glance/glance.yml"
cp /home/zishan/glance/config/home.yml "$REPO/glance/home.yml"
cp /home/zishan/glance/docker-compose.yml "$REPO/glance/docker-compose.yml"
cp /home/nginxpm/docker-compose.yml "$REPO/nginxpm/docker-compose.yml"
# cp /home/beszel/docker-compose.yml "$REPO/beszel/docker-compose.yml"

# Stage only the configuration files
git add \
    glance/glance.yml \
    glance/home.yml \
    glance/docker-compose.yml \
    nginxpm/docker-compose.yml \
    beszel/docker-compose.yml

# Commit and push only if something changed
if ! git diff --cached --quiet; then
    git commit -m "Auto-update configs - $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
fi
