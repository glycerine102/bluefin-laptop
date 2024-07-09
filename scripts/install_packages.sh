#!/bin/bash

set -ouex pipefail

programming_packages=(
  "alacritty"
)

packages=(
  "${programming_packages[@]}"
)

rpm-ostree install "${packages[@]}"
