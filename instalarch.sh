#!/bin/bash
# sudo pacman -Sy
# sudo pacman -S git
# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch.sh
# ./instalarch.sh

timedatectl set-ntp true

echo -n "Ingrese el numero de la unidad donde se montara /swap: "
read -s swap_number
echo
echo -n "Vamos a montar swapn en la unidad /dev/sda{$mnt_number}"
mkswap /dev/sda${swap_number}
swapon /dev/sda${swap_number}

echo -n "Ingrese el numero de la unidad donde se montara /mnt: "
read -s mnt_number
echo
echo -n "Vamos a formatear la unidad /dev/sda{$mnt_number}"

mkfs.ext4 /dev/sda{$mnt_number}
mount /dev/sda{$mnt_number} /mnt

mkdir /mnt/boot
mount /dev/sda2 /mnt/boot

mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

pacstrap /mnt base base-devel grub efibootmgr dialog wpa_supplicant linux linux-headers nano dhcpcd iwd lvm2 linux-firmware --noconfirm

genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

arch-chroot /mnt /bin/bash

systemctl enable iwd

ln -s /usr/share/zoneinfo/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc --utc
hwclock --show

echo -n "Ingrese el nombre del host: "
read -s host_name
echo
echo ${host_name} > /etc/hostname
passwd

echo -n "Ingrese el nombre del usuario: "
read -s usr_name
echo
useradd -m -G wheel,storage,power -s /bin/bash ${usr_name}
passwd ${usr_name}

echo "LANG=es_AR.UTF-8" > /etc/locale.gen
echo "LANG=es_AR.UTF-8" > /etc/locale.conf
echo "KEYMAP=es" > /etc/vconsole.conf

echo ${host_name} > /etc/hostname
echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "::1\t\tlocalhost" >> /etc/hosts
echo -e "127.0.1.1\t${host_name}.${usr_name} ${host_name}" >> /etc/hosts
cat /etc/hosts

locale-gen

mkinitcpio -p linux

echo -n "Ingrese el id de la instalacion en para el bootloader: "
read -s id_name
echo
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=4{id_name}
grub-mkconfig -o /boot/grub/grub.cfg

# Exit Your New Arch System
exit

# Unmount all partitions
umount -R /mnt
swapoff -a

# Reboot and Enjoy Your Encrypted Arch Linux System!
reboot

# [[ "$password" == "$password2" ]] || ( echo "Passwords did not match"; exit 1; )
