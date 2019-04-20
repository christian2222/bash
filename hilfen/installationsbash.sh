#!/bin/bash

# aptitude update before!

# first update sources by writing into /etc/apt/sources.list 

# deb http://ftp.de.debian.org/debian/ wheezy main contrib non-free
# deb http://security.debian.org/ wheezy/updates main contrib
# deb http://ftp.de.debian.org/debian/ wheezy-updates main contrib non-free
# deb http://ftp.de.debian.org/debian/ wheezy-backports main contrib non-free

# you can erase the "non-free" if you want

# after all call aptitude update to get access to the "new" software




# programming
apt-get install -y java-sdk
apt-get install -y eclipse
apt-get install -y vim
apt-get install -y vim-gtk
apt-get install -y vim-gnome
apt-get install -y vim-latexsuite
apt-get install -y latex2html

# games
apt-get install -y supertux
apt-get install -y supertuxkart
apt-get install -y tuxmath
# apt-get install -y widelands
apt-get install -y gnuchess

# programs
apt-get install -y firefox
apt-get install -y nautilus
apt-get install -y p7zip
apt-get install -y gnome-mplayer
# apt-get install -y gxine
apt-get install -y libreoffice
apt-get install -y gimp
apt-get install -y ultracopier
apt-get install -y vlc


# apt-get install -y usb-modeswitch  # for mobbile Internet
apt-get install -y psutils

# desktop manager
apt-get install -y lxde
apt-get install -y kde-full
apt-get install -y fvwm
apt-get install -y xfce4
apt-get install -y gnome
apt-get install -y e17
apt-get install -y icewm-lite
# apt-get install -y

# scientific
apt-get install -y texlive-full # very big ~> to the end!

# apt-get install -y ...    
# -y =Yes Option, Noninteractive say Yes to every question

# xtexcad extern

# kaffeine  - only Desktop


# -d 
# download only, doesn't install
