#!/usr/bin/env bash
set -xeuo pipefail

dnf config-manager addrepo --from-repofile=https://pkgs.tailscale.com/stable/fedora/tailscale.repo
dnf config-manager setopt tailscale-stable.enabled=0
dnf install -y --enablerepo='tailscale-stable' tailscale
systemctl enable tailscaled
systemctl enable sshd.service
