#!/bin/bash

set -ouex pipefail

# Set up nyx semantic versioning tool
curl -L https://github.com/mooltiverse/nyx/releases/download/3.0.4/nyx-linux-amd64 > /tmp/nyx
mv /tmp/nyx /usrlocal/bin/nyx && chown root:root /usr/local/bin/nyx && chmod 0755 /usr/local/bin/nyx

sysadmin_packages=(
  "alacritty"
)

networking_packages=(
  "netbird"
  "netbird-ui"
  "libappindicator-gtk3"
  "libappindicator"
)

packages=(
  "${sysadmin_packages[@]}"
  "${networking_packages[@]}"
)

rpm-ostree install "${packages[@]}"
