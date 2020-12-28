#!/bin/bash

echo -n "Ingrese el numero de la unidad donde se montara /mnt: "
read -s mnt_number
echo -n "Vamos a formatear la unidad /dev/sda$mnt_number"
echo -n "Repeat Password: "
read -s password2
echo
#[[ "$password" == "$password2" ]] || ( echo "Passwords did not match"; exit 1; )
