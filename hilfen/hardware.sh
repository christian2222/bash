#!/bin/bash

# PREPARATION
echo "adding repositories..."

# Add repositories
# cinerella
git clone git://git.cinelerra.org/j6t/cinelerra.git my_cinelerra
# grub customizer
add-apt-repository ppa:danielrichter2007/grub-customizer
# nvidia-current
add-apt-repository ppa:ubuntu-x-swat/x-updates

# ensure you are up to date ;)
apt-get update; apt-get -y upgrade; apt-get update

echo "installing hardware..."
# HARDWARE
# grafik: Gforce gt 740
apt-get install -y nvidia-current
# Restart after installation !!!

# program for search and installation
apt-get install -y aptitude

# boot manager
apt-get install -y grub-customizer

apt-get install -y usb-modeswitch # for mobile internet
# more info tomobile Internet: http://ubuntuforums.org/showpost.php?p=7219684&postcount=41

# scanner
apt-get install -y sane
apt-get install -y xsane


# dvd brenner
apt-get install -y xfburn
apt-get install -y brasero

# booting
apt-get install -y gparted

echo "everythings good, but restart!"
#  command: reboot

