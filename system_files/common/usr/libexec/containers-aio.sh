#!/usr/bin/env bash
set -xeuo pipefail

curl -fsSL --create-dirs -o \
/etc/containers/systemd/audiobookshelf.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/audiobookshelf.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/caddy.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/caddy.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/homer.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/homer.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/jellyfin.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/jellyfin.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/linkding.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/linkding.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/navidrome.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/navidrome.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/qbittorent.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/qbittorrent.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/stash.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/stash.container

curl -fsSL --create-dirs -o \
/etc/containers/systemd/stirlingpdf.container \
https://raw.githubusercontent.com/emblem-66/containers/refs/heads/main/system_files/stirlingpdf.container
