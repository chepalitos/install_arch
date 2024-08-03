#!/bin/bash

# Install DKMS. This will automatically rebuild your kernel modules as new upstream kernels are released.
sudo pacman -S dkms

# pacman -S xorg-xwayland
# pacman -S xf86-video-intel
# pacman -Syu xf86-input-wacom
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

# pacman -S gnome
sudo pacman -S gnome-shell nautilus gnome-console gnome-system-monitor gnome-text-editor gnome-calculator gnome-screenshot gnome-control-center evince totem firefox tmux openssh networkmanager eog
# pacman -S gnome-keyring
# pacman -S usbutils tcpdump

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

#systemctl stop dhcpcd
#systemctl disable dhcpcd

# sudo pacman -S bluez bluez-utils
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# First off, I’ll install pulseaudio and the Bluetooth extension.
#sudo pacman -S pulseaudio
#sudo pacman -S pulseaudio-bluetooth

# Start up pulseaudio:
#sudo systemctl pulseaudio start
# If you want it to start up automatically:
#sudo systemctl start pulseaudio

sudo pacman -S gdm
sudo systemctl enable gdm
sudo systemctl start gdm

echo "are we still alive?"