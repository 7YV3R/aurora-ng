#!/usr/bin/env bash

set -ouex pipefail

### Install packages

chmod +x /ctx/*.sh

# install hyprland
/ctx/05_install_hyprland.sh

systemctl enable podman.socket
systemctl enable bolt.service
