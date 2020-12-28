#!/bin/bash
# sudo pacman -Sy
# sudo pacman -S git
# chmod +x instalarch.sh
# git clone https://github.com/palitoschinos/instalarch

echo -n "Ingrese el numero de la unidad donde se montara /mnt: "
read -s mnt_number
echo -n "Vamos a formatear la unidad /dev/sda$mnt_number"
echo -n

#[[ "$password" == "$password2" ]] || ( echo "Passwords did not match"; exit 1; )
