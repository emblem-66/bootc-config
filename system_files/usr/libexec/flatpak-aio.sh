#!/usr/bin/env bash
set -xeuo pipefail

# FLATHUB SETUP
flatpak remote-add --if-not-exists --system flathub /etc/flatpak/remotes.d/flathub.flatpakrepo
flatpak remote-modify --system --enable flathub || true
flatpak remote-modify --system --disable fedora || true

# APP INSTALL
FLATPAK_LIST="$(curl https://raw.githubusercontent.com/emblem-66/bootc-config/refs/heads/main/flatpak-packages | tr '\n' ' ')"
flatpak -y --noninteractive install ${FLATPAK_LIST}

# UPDATE
flatpak update --noninteractive --assumeyes
flatpak uninstall --unused --noninteractive --assumeyes

# OVERRIDES
flatpak override --filesystem=/var/mnt
flatpak override --filesystem=xdg-config/gtk-3.0:ro
flatpak override --filesystem=xdg-config/gtk-4.0:ro
