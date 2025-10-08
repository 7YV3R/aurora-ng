#!/usr/bin/env bash

set -ouex pipefail

### Install custom development environment

# install prepared repo files
mkdir -p /etc/yum.repos.d
cp /ctx/repo_files/vscodium.repo /etc/yum.repos.d/

# install dev tools packages
dnf5 install -y \
	android-tools \
	codium \
	python3 \
	python3-pip \
	python3-virtualenv
