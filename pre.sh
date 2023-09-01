#!/bin/bash

# Update apt registry.
apt-get update

# Pass grub.
apt-mark hold package grub-pc grub-pc-bin grub2-common grub-common

# Upgrade packages and kernel.
apt-get dist-upgrade -y

echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf