echo -n ">>> Ingrese el nombre del usuario: "
read -s usr_name
echo $usr_name
useradd --create-home --groups wheel $usr_name
# useradd -d /home/alex_old -s /bin/bash $usr_name
# useradd --create-home $usr_name
# usermod -aG wheel $usr_name

# -d /home/alex_old: Tells the system, "This is this user's home directory." Because you didn't include -m, Linux will just look at the existing folder rather than trying to create a new one from scratch.
# -s /bin/bash: Sets the default shell (highly recommended, otherwise it might default to /bin/sh which is less user-friendly).


echo -n ">>> Ingrese la contraseña para del usuario: "
passwd $usr_name

sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
#sed -i 's/# %sudo ALL=(ALL:ALL) ALL/sudo ALL=(ALL:ALL) ALL/' /etc/sudoers
#sed -i 's/root ALL=(ALL:ALL) ALL/root ALL=(ALL:ALL) ALL\n$usr_name ALL=(ALL) ALL/' /etc/sudoers

#usermod -a -G sudo <user-name>
#usermod -a -G wheel <user-name>

#mkinitcpio -p

#echo -n "Ingrese el nombre de la etiqueta de la instalacion en para el bootloader: "
#read -s id_name
#echo $id_name

#pacman -S grub efibootmgr
pacman -S efibootmgr grub-efi-x86_64
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub_uefi
grub-mkconfig -o /boot/grub/grub.cfg

pacman -S dhcpcd iputils dnsutils vim
#systemctl stop dhcpcd
#systemctl disable dhcpcd

exit
# umount -R /mnt
# swapoff -a
# reboot
