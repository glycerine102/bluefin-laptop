#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

programming_packages=(
  "cmake"
  "freetype-devel"
  "fontconfig-devel"
  "libxcb-devel"
  "libxkbcommon-devel"
  "g++"
)

packages=(
  ${programming_packages[@]}
)

rpm-ostree install ${packages[@]}

systemctl enable podman.socket
