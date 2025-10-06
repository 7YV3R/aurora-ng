#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y \
    tmux \
    bolt \
    cifs-utils \
    kio-fuse \
    alacritty \
    alsa-utils \
    blueman \
    brightnessctl \
    grim \
    jq \
    kitty \
    libnotify \
    lxqt-policykit \
    nautilus \
    pamixer \
    pavucontrol \
    playerctl \
    rofi \
    slurp \
    swayimg \
    swappy \
    SwayNotificationCenter \
    wofi \
    waybar \
    wl-clipboard \
    wlogout

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging
dnf5 copr enable solopasha/hyprland 
dnf5 install -y \
    hyprland \
    hyprlock \
    hyprshot \
    swww
dnf5 copr disable solopasha/hyprland 

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable bolt.service
