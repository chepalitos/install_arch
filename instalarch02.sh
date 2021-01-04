#!/bin/bash
# pacman -Sy
# pacman -S git
# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch02.sh
# ./instalarch02.sh

# systemctl enable iwd

#echo "set hwclock"
# timedatectl set-ntp yes
#timedatectl set-timezone America/Argentina/Buenos_Aires
ln -s /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc --utc
hwclock --show

echo -n "Ingrese el nombre del host: "
read -s host_name
echo $host_name
echo $host_name > /etc/hostname
echo -n "Ingrese la contraseña para el host: "
passwd

echo -n "Ingrese el nombre del usuario: "
read -s usr_name
echo $usr_name
useradd -m -G stroage,power,wheel -s /bin/bash $usr_name
echo -n "Ingrese la contraseña para del usuario: "
passwd $usr_name

echo "LANG=es_AR.UTF-8" > /etc/locale.conf
echo "KEYMAP=es" > /etc/vconsole.conf

echo ${host_name} > /etc/hostname
echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "::1\t\tlocalhost" >> /etc/hosts
echo -e "127.0.1.1\t$host_name.$usr_name $host_name" >> /etc/hosts
cat /etc/hosts

locale-gen

mkinitcpio -p linux

echo -n "Ingrese el nombre de la etiqueta de la instalacion en para el bootloader: "
read -s id_name
echo $id_name

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=$id_name

#pacman -S os-prober
#os-prober
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable dhcpcd

# Exit Your New Arch System
# exit

# Unmount all partitions
# umount -R /mnt
# swapoff -a

# Reboot and Enjoy Your Encrypted Arch Linux System!
# reboot
