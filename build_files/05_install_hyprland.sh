#!/usr/bin/env bash

set -ouex pipefail

### Install hyprland packages

# enable hyprland copr
dnf5 -y copr enable solopasha/hyprland

# install hyprland packages
dnf5 install -y \
    alacritty \
    alsa-utils \
    blueman \
    brightnessctl \
    grim \
    hyprland \
    hyprlock \
    hyprshot \
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
    swww \
    wofi \
    waybar \
    wl-clipboard \
    wlogout


# disable the copr for building the image
dnf5 -y copr disable solopasha/hyprland 