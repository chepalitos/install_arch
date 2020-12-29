
# Fully update your Arch system:
# pacman -Syu  # If a new kernel becomes available and is now installed, reboot, before proceeding.

# If you don't have network connectivity in your Arch system, run:
# systemctl start dhcpcd <ethernet or wlan interface name>

# Now that you have an updated system, do:
# pacman -S linux-headers
# pacman -S dkms  # This will automatically rebuild your kernel modules as new upstream kernels are released.

# pacman -S xorg  #  This will install a mandatory X server.
# pacman -S xorg-apps

# reboot
