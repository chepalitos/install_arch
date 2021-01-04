#!/bin/bash
# pacman -Sy
# pacman -S git

# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# source instalarchgnome.sh

# If you don't have network connectivity in your Arch system, run:
# systemctl start dhcpcd <ethernet or wlan interface name>
# systemctl enable dhcpcd
# ip link set <ethernet or wlan interface name> up

# Fully update your Arch system:
# pacman -Syu  # If a new kernel becomes available and is now installed, reboot, before proceeding.
# Now that you have an updated system, do:
# pacman -S linux-headers
# pacman -S dkms  # This will automatically rebuild your kernel modules as new upstream kernels are released.

pacman -S xorg
pacman -S xf86-video-intel
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

pacman -S gnome-shell nautilus gnome-terminal gnome-tweak-tool gnome-keyring gnome-system-monitor
# pacman -S genome-shell-extensions gnome-software totem evince epiphany gnome-screenshot gedit eye gnome-control-center xdg-user-dirs network-manager-applet
# pacman -S latexila gtg gitg file-roller go recapp
# pacman -S papirus-icon-theme

# pacman -Syu xf86-input-wacom

pacman -S networkmanager

systemctl stop dhcpcd
systemctl disable dhcpcd

systemctl enable NetworkManager
systemctl start NetworkManager

pacman -S gdm
systemctl enable gdm
systemctl start gdm

echo "are we still alive?"

# nano /etc/sudoers
# user_name ALL=(ALL)  ALL

# nano /etc/locale.gen # uncomment the needed lines like: es_AR ISO-8859-1 and es_AR.UTF-8 UTF-8
# locale-gen

# localectl set-locale LANG="es_AR.UTF-8"
# localectl set-x11-keymap es

# localectl bluez bluez-utils

# pacman -S --needed base-devel git wget yajl
# cd /tmp

# pacman -S go
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# yay -S pamac-aur-git --noconfirm
