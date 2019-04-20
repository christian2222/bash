#!/bin/bash

sudo su

# REPOSITORIES (PREPARATION)
add-apt-repository ppa:rvm/smplayer 
add-apt-repository ppa:ubuntu-wine/ppa

# UNIVERSE (MORE SOFTWARE)
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
# deb http://ftp.de.debian.org/debian/ wheezy main contrib non-free
# deb http://security.debian.org/ wheezy/updates main contrib
# deb http://ftp.de.debian.org/debian/ wheezy-updates main contrib non-free
# deb http://ftp.de.debian.org/debian/ wheezy-backports main contrib non-free

# you can erase the "non-free" if you want; after add of repositories perform apt-get update!
apt-get update

# SOFTWARE


# Games
# apt-get install -y supertux
# apt-get install -y supertuxkart
# apt-get install -y tuxmath
# apt-get install -y widelands
# apt-get install -y gnuchess

# Programs
apt-get install -y firefox
apt-get install -y nautilus
# apt-get install -y libreoffice # already instaled
apt-get install -y gimp

# Tools
apt-get install -y p7zip-full
apt-get install -y p7zip
apt-get install -y tree
# apt-get install -y ultracopier
apt-get install -y pstools
apt-get install -y psutils
# see sizes on volumes
apt-get install -y boabab
apt-get install -y k4dirstat
# find duplicates
apt-get install -y fslint # duplicate finder
apt-get install -y fdupes # duplicate finder command line tool
apt-get install -y meld # graphical tool to diff and merge files
apt-get install -y kdiff3 # compares and merges 2 or 3 files or 
# apt-get install -y usb-modeswitch  # for mobbile Internet
apt-get install -y clamav # clamav
apt-get install -y clamtk # desktop application for clamav

# Desktop Manager
# apt-get install -y lxde
# apt-get install -y kde-full # install own os kubuntu for that because it doesnt work well on unity or gnome editions of ubuntu
# apt-get install -y fvwm
# apt-get install -y xfce4
# apt-get install -y gnome
# apt-get install -y e17
# apt-get install -y icewm-lite
# apt-get install -y

# Scientific and Programming
apt-get install -y texlive-full # very big ~> to the end!
apt-get install -y texlive-base # toDo: make installapt-get install on choice
apt-get install -y latex2html
apt-get -y install gnuplot # gnuplot
apt-get -y install tiemu # texas instruments emulator
# apt-get install -y java-sdk # not newest version
apt-get -y install openjdk-11-jdk # java 11 jdk
# apt-get install -y eclipse # not newest version?; is on hdd 1.0 tb inside the [important] folder
apt-get install -y vim
# apt-get install -y gvim # resolved by -gtk and -gnome
apt-get install -y vim-gtk
apt-get install -y vim-gnome
# install vim latexsuite with the next 4 lines (order is important)
apt-get install -y vim-latexsuite 
apt-get install -y vim-addon-manager #aktivieren
vim-addons install latex-suite # fuer jeden user
vim-addons status # kontrolle

# apt-get install -y xtexcad extern
# apt-get -y install xemacs
# apt-get -y install auctex
apt-get install tmux # mouse free terminal development
apt-get install pv # prints progrss bars for actions
# Video and Music
# media codex and fonts for ubuntu
apt-get install -y ubuntu-restricted-extras
# configure
./usr/share/doc/libdvdread4/install-css.sh
#players
# apt-get install -y gnome-player
# apt-get install -y gxine
apt-get install -y vlc
apt-get install -y smplayer # see re[psitories
# apt-get install -y kaffeine # only DesktopPC
# apt-get install -y gnome-mplayer
apt-get install -y dvbcut # cutting mpegs



# Other
# menu editor
apt-get install -y menulibre
apt-get install -y gnome-panel #?
apt-get install -y libcss

# dazu
apt-get -y install compizconfig-settings-manager # viele Konfigurationsmoeglichkeiten
apt-get -y install synaptic # bessere Packetverwaltung als Ubuntu Software Center
apt-get -y install unity-tweak-tool # mehr konfigurieren
apt-get -y install gparted # partition tool

# some video tools
apt-get -y install ffmpeg # commandline converter
apt-get -y install devede # create dvds from mp4s and other files
apt-get -y install winff # desktop converter tool
apt-get -y install ripperx # ripping mp3s from audio cds
apt-get install -y dvbcut # cutting mpegs
# apt-get -y install 
# apt-get -y install 
# apt-get -y install 


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
apt-get install -y vim-latexsuite
apt-get install -y latex2html





# -d 
# download only, doesn't install





cd ~/Downloads

cd ~
wget https://sourceforge.net/projects/vim-latex/files/releases/vim-latex-1.10.0.tar.gz
tar xvfz vim-latex-1.10.0.tar.gz
mv vim-latex-1.10.0 .vim

cd ~
git clone https://github.com/christian2222/dotfiles
git clone https://github.com/christian2222/bash

cd ~/dotfiles
./makeLinks.sh

cd ~
ll


# apt-get install -y ...
# -y =Yes Option, Noninteractive say Yes to every question

