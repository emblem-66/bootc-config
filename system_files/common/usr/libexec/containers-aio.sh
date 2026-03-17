#!/usr/bin/env bash
set -xeuo pipefail

BASE_URL="https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files"
DIR="/etc/containers/systemd"
services=""
#tailscale_ip=""

TS_IP=$(tailscale ip -4 | head -n1)
echo $TS_IP

if [[ -z "$TS_IP" ]]; then
    echo "Error: could not get Tailscale IP"
    exit 1
fi

for file in "$DIR"/*.container; do
    name=$(basename "$file")

    curl -fsSL "$BASE_URL/$name" -o "$DIR/$name"

    # Only replace if placeholder exists
    if grep -q "__TS_IP__" "$DIR/$name"; then
        sed -i "s|__TS_IP__|$TS_IP|g" "$DIR/$name"
    fi

    service="${name%.container}.service"
    services="$services $service"
done

systemctl daemon-reload
systemctl restart $services
