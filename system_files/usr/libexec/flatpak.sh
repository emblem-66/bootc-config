#!/usr/bin/env bash
set -xeuo pipefail

flatpak remote-add --if-not-exists --system flathub /etc/flatpak/remotes.d/flathub.flatpakrepo
flatpak remote-modify --system --enable flathub || true
flatpak remote-modify --system --disable fedora || true
flatpak --user -y --noninteractive install $(curl -s https://raw.githubusercontent.com/emblem-66/bootc-config/refs/heads/main/flatpak-packages | tr "\n" " ")
flatpak update --noninteractive --assumeyes
flatpak uninstall --unused --noninteractive --assumeyes
