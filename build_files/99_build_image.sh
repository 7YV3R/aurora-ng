#!/usr/bin/env bash

set -ouex pipefail

### Setup Image Information
/ctx/00_image_info.sh

### Install packages

# install extended system environment
/ctx/03_install_extended_system.sh

# install virtualization and containerization environment
/ctx/04_install_virtualization.sh

# install custom development environment
/ctx/05_install_dev_environment.sh

# install hyprland
/ctx/06_install_hyprland.sh
