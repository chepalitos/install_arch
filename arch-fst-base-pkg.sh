#!/bin/bash

# Verifica la hora del sistema: Un reloj desactualizado causa fallos en la validez de los certificados y firmas
timedatectl set-ntp true

# Instalando archlinux-heyring
pacman -Sy archlinux-keyring

pacman-key --init
pacman-key --populate archlinux
# pacman-key --refresh-keys


•
Usa el código con precaución.
• Actualiza el paquete de claves:
Vuelve a instalar o actualizar las claves oficiales de los desarrolladores:bash
sudo pacman -Sy archlinux-keyring
Usa el código con precaución.
• Inicializa y puebla las claves de Pacman:
Si el problema persiste, reinicializa la base de datos de claves del sistema:bash
sudo pacman-key --init
sudo pacman-key --populate archlinux


# Instalando archlinux-heyring

# pacman-key --init
# pacman-key --populate archlinux
# pacman -Sy archlinux-keyring

echo -n ">>>> Instalando paquetes base\n"

# pacstrap /mnt base
# pacstrap /mnt base linux-firmware linux

# pacstrap /mnt base
pacstrap /mnt base linux-firmware linux linux-headers base-devel
# pacstrap /mnt base linux-firmware linux linux-headers base-devel dhcpcd iputils dnsutils vim
# pacstrap /mnt base linux-firmware linux efibootmgr grub-efi-x86_64 base-devel vim
# pacstrap /mnt base linux-firmware linux efibootmgr grub-efi-x86_64 base-devel vim linux-headers net-tools dnsutils iputils dhcpcd

genfstab -U /mnt >> /mnt/etc/fstab

# echo -n ">>> bye bye\n"

arch-chroot /mnt
# arch-chroot /mnt /bin/bash
