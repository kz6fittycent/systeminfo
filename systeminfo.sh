#!/bin/bash

## systeminfo
## A simple script to get basic system information.
echo
echo
echo '**********************************************************'
echo '***************** SYSTEM INFORMATION *********************'
echo '**********************************************************'
echo
[ -f /usr/sbin/dmidecode ]
sudo -v && echo -n "Motherboard"  
sudo dmidecode -t 1 | grep "Manufacturer\|Product Name\|Serial Number" | tr -d "\t" | sed "s/Manufacturer//" 
echo -ne "\nBIOS"
echo 
echo sudo dmidecode -t 0 | grep "Vendor\|Version\|Release" | tr -d "\t" | sed "s/Vendor//" 
echo
lscpu | grep -e Intel -e AMD
echo 
sudo dmidecode -t 17 | grep MB | sed "s/Size/RAM/g" | tr -d '[:blank:]' 
echo
lsb_release -cdri
echo
echo '**********************************************************'
#

