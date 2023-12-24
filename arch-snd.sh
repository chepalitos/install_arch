#!/bin/bash

ln -s /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
hwclock --systohc --utc
hwclock --show

sed -i 's/#es_AR.UTF-8 UTF-8/es_AR.UTF-8 UTF-8/' /etc/locale.gen
locale-gen

echo "LANG=es_AR.UTF-8" > /etc/locale.conf
#echo "KEYMAP=es" > /etc/vconsole.conf
#locale-gen

echo -n ">>> Ingrese el nombre del host: "
read -s host_name
echo $host_name
echo $host_name > /etc/hostname
echo -n ">>> Ingrese la contraseña para el host: "
passwd

echo -n ">>> Instalando sudo packages"
pacman -S sudo

echo $host_name > /etc/hostname
echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "::1\t\tlocalhost" >> /etc/hosts
echo -e "127.0.1.1\t$host_name.$usr_name $host_name" >> /etc/hosts
cat /etc/hosts


