#!/usr/bin/env bash

set -ouex pipefail

### Install virtualization/containerization environment

# install prepared repo files
mkdir -p /etc/yum.repos.d
cp /ctx/repo_files/docker-ce.repo /etc/yum.repos.d/

# ublue-os packages
dnf5 -y copr enable ublue-os/packages

# Podman-bootc
dnf5 -y copr enable gmaglione/podman-bootc

# install dev tools packages
dnf5 install -y \
	containerd.io \
	docker-buildx-plugin \
	docker-ce \
	docker-ce-cli \
	docker-compose-plugin \
	edk2-ovmf \
	libvirt \
	libvirt-nss \
	podman-bootc \
	podman-compose \
	podman-machine \
	podman-tui \
	podmansh \
	qemu \
	qemu-char-spice \
	qemu-device-display-virtio-gpu \
	qemu-device-display-virtio-vga \
	qemu-device-usb-redirect \
	qemu-img \
	qemu-system-x86-core \
	qemu-user-binfmt \
	qemu-user-static \
	ublue-os-libvirt-workarounds \
	virt-manager \
	virt-v2v \
	virt-viewer 


#disable copr packages
dnf5 -y copr disable ublue-os/packages
dnf5 -y copr disable gmaglione/podman-bootc

# enable services
systemctl enable podman.socket
systemctl enable docker.socket