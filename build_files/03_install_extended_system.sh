#!/usr/bin/env bash

set -ouex pipefail

### Install extended system components

# ublue-os packages
dnf5 -y copr enable ublue-os/packages

# install dev tools packages
dnf5 install -y \
	bolt \
	cockpit-bridge \
	cockpit-machines \
	cockpit-networkmanager \
	cockpit-ostree \
	cockpit-podman \
	cockpit-selinux \
	cockpit-storaged \
	cockpit-system \
	iotop \
	osbuild-selinux \
	p7zip \
    syncthing \
	tiptop


#disable copr packages
dnf5 -y copr disable ublue-os/packages

# enable services
systemctl enable bolt.service