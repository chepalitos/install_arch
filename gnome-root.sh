#!/bin/bash

# Install DKMS. This will automatically rebuild your kernel modules as new upstream kernels are released.
pacman -S dkms

# pacman -S xorg-xwayland
# pacman -S xf86-video-intel
# pacman -Syu xf86-input-wacom
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

# pacman -S gnome
pacman -S gnome-shell nautilus gnome-console gnome-system-monitor gnome-text-editor gnome-calculator gnome-screenshot gnome-control-center evince totem firefox tmux openssh networkmanager
# pacman -S genome-shell-extensions epiphany gedit eye xdg-user-dirs network-manager-applet gnome-tweak-tool gnome-terminal
# pacman -S gnome-keyring
# pacman -S usbutils tcpdump

systemctl enable NetworkManager
systemctl start NetworkManager

#systemctl stop dhcpcd
#systemctl disable dhcpcd

# sudo pacman -S bluez bluez-utils
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

# sudo pacman -S gnome-themes-extra
# sudo pacman -S xdg-desktop-portal-gnome xdg-desktop-portal
# gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark/Nautilus
# gsettings get org.gnome.desktop.interface gtk-theme
# gsettings set org.gnome.desktop.interface gtk-theme prefer-dark


# localectl set-x11-keymap es
# localectl set-x11-keymap latam
# gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'latam')]"
# gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'es')]"
# gsettings get org.gnome.desktop.input-sources sources
