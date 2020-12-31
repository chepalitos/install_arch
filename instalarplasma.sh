#!/bin/bash
# pacman -Sy
# pacman -S git
# cd /tmp
# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch.sh
# ./instalarch.sh

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
pacman -S xorg-drivers xorg-xinit xorg-apps

pacman -S plasma-desktop

pacman -S konsole dolphin kate Okular KTorrent Falkon Apper discover kdeplasma-addons
# pacman -S Scribus Konqueror LabPlot Cantor KBibTeX Krita KRDC Krfb Calligra Sheets KTimeTracker firefox KDE Partition Manager pencil2d

# audio and brightness control
pacman -S powerdevil plasma-pa

# To enable the Breeze theme for SDDM, you need edit SDDM config file. Type in your terminal:
# nano /etc/sddm.conf
# And in the Current theme name, set the theme name to breeze.

pacman -S networkmanager plasma-nm

systemctl stop dhcpcd
systemctl disable dhcpcd

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

pacman -S sddm
sudo systemctl enable sddm
sudo systemctl start sddm

# pacman -S openconnect networkmanager-openconnect
echo "are we still alive?"
