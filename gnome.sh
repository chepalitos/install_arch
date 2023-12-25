#!/bin/bash

# Install DKMS. This will automatically rebuild your kernel modules as new upstream kernels are released.
pacman -S dkms

# pacman -S xorg-xwayland
pacman -S xf86-video-intel
# pacman -Syu xf86-input-wacom
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

# pacman -S gnome
pacman -S gnome-shell nautilus gnome-terminal gnome-system-monitor gnome-text-editor gnome-calculator gnome-screenshot gnome-control-center evince totem epiphany tmux openssh networkmanager
# pacman -S genome-shell-extensions gnome-software totem evince epiphany gnome-screenshot gedit eye gnome-control-center xdg-user-dirs network-manager-applet gnome-tweak-tool
# pacman -S latexila gtg gitg file-roller go recapp anjunta bluefish gnome-keyring
# pacman -S usbutils tcpdump

systemctl enable NetworkManager
systemctl start NetworkManager

#systemctl stop dhcpcd
#systemctl disable dhcpcd

systemctl enable bluetooth
systemctl start bluetooth

# First off, I’ll install pulseaudio and the Bluetooth extension.
#sudo pacman -S pulseaudio
#sudo pacman -S pulseaudio-bluetooth
# Start up pulseaudio:
#sudo systemctl pulseaudio start
# If you want it to start up automatically:
#sudo systemctl start pulseaudio

pacman -S gdm
systemctl enable gdm
systemctl start gdm

echo "are we still alive?"

# pacman -S papirus-icon-theme
# gsettings set org.gnome.desktop.interface icon-theme Papirus

# pacman -S gnome-themes-extra
# gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark/
# gsettings get org.gnome.desktop.interface gtk-theme

# ctrl + alt + f3
# login as root
# nano /etc/sudoers
# nomre_del_usuario ALL=(ALL) ALL

# localectl set-locale LANG="es_AR.UTF-8"
# localectl set-x11-keymap es
# nano /etc/locale.gen uncomment es_AR.UTF-8. Comment out any others, unless of course you need them to be able to read.

# Then run: sudo locale-gen
# localectl bluez bluez-utils

# not xdg-desktop-portal-gnome is needed… it needs xdg-desktop-portal
# sudo pacman -S xdg-desktop-portal-gnome xdg-desktop-portal
# localectl set-x11-keymap es
# gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'latam')]"
# gsettings get org.gnome.desktop.input-sources sources
