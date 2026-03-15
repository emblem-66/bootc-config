#!/usr/bin/env bash
set -xeuo pipefail

BASE_URL="https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/"
DIR="/etc/containers/systemd/"

for file in "$DIR"/*.container; do
    name=$(basename "$file")

    curl -fsSL "$BASE_URL/$name" -o "$DIR/$name"

    service="${name%.container}.service"
    services="$services $service"
done

sudo systemctl daemon-reload
sudo systemctl restart $services
