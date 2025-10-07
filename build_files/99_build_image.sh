#!/usr/bin/env bash

set -ouex pipefail

### Install packages

# install hyprland
/ctx/05_install_hyprland.sh

systemctl enable podman.socket
systemctl enable bolt.service
