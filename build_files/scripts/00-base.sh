#!/usr/bin/env bash
set -xeuo pipefail

echo "::group::****"
trap 'echo "::endgroup::"' EXIT

dnf install -y 'dnf5-command(config-manager)'
# glibc
dnf install -y glibc-minimal-langpack
dnf remove -y glibc-all-langpacks
# Debloat
dnf remove -y qemu-user-static* sssd*
# Just
dnf install -y just
# Cockpit
dnf install -y cockpit
systemctl enable cockpit.socket
# Firewall
dnf install -y firewalld
systemctl enable firewalld.service
# Autoremove
dnf autoremove -y
