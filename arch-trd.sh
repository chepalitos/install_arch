#echo -n ">>> Ingrese el nombre del usuario: "
#read -s usr_name
#echo $usr_name
#useradd --create-home --groups wheel $usr_name
#echo -n ">>> Ingrese la contraseña para del usuario: "
#passwd $usr_name

sed -i 's/# %wheel ALL=(ALL=ALL) ALL/%wheel ALL=(ALL=ALL) ALL/' /etc/sudoers
sed -i 's/# %sudo ALL=(ALL) ALL/%sudo ALL=(ALL) ALL/' /etc/sudoers
# sed -i 's/root ALL=(ALL) ALL/root ALL=(ALL) ALL\n$usr_name ALL=(ALL) ALL/' /etc/sudoers

#mkinitcpio -p

#echo -n "Ingrese el nombre de la etiqueta de la instalacion en para el bootloader: "
#read -s id_name
#echo $id_name

pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub_uefi
#grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg

#systemctl enable dhcpcd

echo -n ">>> bye bye\n"

exit
# umount -R /mnt
# swapoff -a
# reboot
