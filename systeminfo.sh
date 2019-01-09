#!/bin/bash

## systeminfo
## A simple script to get basic system information.

[ -f /usr/sbin/dmidecode ] && sudo -v && echo -n "Motherboard" && sudo /usr/sbin/dmidecode -t 1 | grep "Manufacturer\|Product Name\|Serial Number" | tr -d "\t" | sed "s/Manufacturer//" && echo -ne "\nBIOS" && sudo /usr/sbin/dmidecode -t 0 | grep "Vendor\|Version\|Release" | tr -d "\t" | sed "s/Vendor//" && lscpu | grep -e Intel -e AMD && sudo dmidecode -t 17 | grep MB | sed "s/Size/RAM/g" | tr -d '[:blank:]' && lsb_release -a

#
