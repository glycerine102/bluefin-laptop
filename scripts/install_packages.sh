#!/bin/bash

set -ouex pipefail

system_packages=(
  "gtk-murrine-engine"
  "monitor-edid"
  "sassc"
)

devops_packages=(
  "alacritty"
)

networking_packages=(
  "netbird"
  "netbird-ui"
  "libappindicator-gtk3"
  "libappindicator"
)

packages=(
  "${system_packages[@]}"
  "${devops_packages[@]}"
  "${networking_packages[@]}"
)

rpm-ostree install "${packages[@]}"
