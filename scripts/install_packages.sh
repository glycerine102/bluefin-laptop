#!/bin/bash

set -ouex pipefail

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
