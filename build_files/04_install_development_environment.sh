#!/usr/bin/env bash

set -ouex pipefail

### Install custom development environment

# install dev tools packages
dnf5 install -y \
	android-tools \
	cockpit-bridge \
	cockpit-machines \
	cockpit-networkmanager \
	cockpit-ostree \
	cockpit-podman \
	cockpit-selinux \
	cockpit-storaged \
	cockpit-system \
	codium \
	containerd.io \
	docker-buildx-plugin \
	docker-ce \
	docker-ce-cli \
	docker-compose-plugin \
	edk2-ovmf \
	iotop \
	libvirt \
	libvirt-nss \
	osbuild-selinux \
	p7zip \
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
	tiptop \
	ublue-os-libvirt-workarounds \
	virt-manager \
	virt-v2v \
	virt-viewer 
