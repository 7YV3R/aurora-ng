#!/usr/bin/env bash

set -ouex pipefail

### remove unwanted contend from base image

# ublue-os packages
dnf5 -y copr enable ublue-os/packages

# install dev tools packages
dnf5 remove -y \
	ublue-brew


#disable copr packages
dnf5 -y copr disable ublue-os/packages