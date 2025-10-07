#!/usr/bin/env bash

set -ouex pipefail

### Install packages

#install custom development environment
/ctx/04_install_development_environment.sh

# install hyprland
/ctx/05_install_hyprland.sh

systemctl enable podman.socket
systemctl enable bolt.service
