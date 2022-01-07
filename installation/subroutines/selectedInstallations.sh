# SOFTWARE
apt-get install -y aptitude
aptitude update
apt-get update; apt-get -y upgrade; apt-get update
# Games
# apt-get install -y supertux
# apt-get install -y supertuxkart
# apt-get install -y tuxmath
# apt-get install -y widelands
# apt-get install -y gnuchess

# Programs
# apt-get install -y firefox
# apt-get install -y nautilus
# apt-get install -y libreoffice # already instaled

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
apt-get install -y curl
# apt-get install -y xtexcad extern
# apt-get -y install xemacs
# apt-get -y install auctex
apt-get install tmux # mouse free terminal development
apt-get install pv # prints progrss bars for actions

# Desktop Manager
# apt-get install -y lxde
# apt-get install -y kde-full # install own os kubuntu for that because it doesnt work well on unity or gnome editions of ubuntu
# apt-get install -y fvwm
# apt-get install -y xfce4
# apt-get install -y gnome
# apt-get install -y e17
# apt-get install -y icewm-lite
# apt-get install -y

# Video and Music
# media codex and fonts for ubuntu
apt-get install -y ubuntu-restricted-extras
# configure
./usr/share/doc/libdvdread4/install-css.sh
# players
# apt-get install -y gnome-player
# apt-get install -y gxine
apt-get install -y vlc
apt-get install -y smplayer # see re[psitories
# apt-get install -y kaffeine # only DesktopPC
# apt-get install -y gnome-mplayer
apt-get install -y dvbcut # cutting mpegs

# software/properties-gtk -> check all checkboxes
# hardware
# apt-get install nvidia-current

# PREPARATION
echo "adding repositories..."

# Add repositories
# cinerella
git clone git://git.cinelerra.org/j6t/cinelerra.git my_cinelerra
# grub customizer
# add-apt-repository ppa:danielrichter2007/grub-customizer
# nvidia-current
add-apt-repository -y ppa:ubuntu-x-swat/x-updates

# ensure you are up to date ;)
apt-get update; apt-get -y upgrade; apt-get update

# echo "installing hardware..."
# HARDWARE
# grafik: Gforce gt 740
# apt-get install -y nvidia-current
# Restart after installation !!!

# program for search and installation
apt-get install -y aptitude

# boot manager
# apt-get install -y grub-customizer

# apt-get install -y usb-modeswitch # for mobile internet
# more info tomobile Internet: http://ubuntuforums.org/showpost.php?p=7219684&postcount=41

# scanner
apt-get install -y sane
apt-get install -y xsane


# dvd brenner
apt-get install -y xfburn
apt-get install -y brasero

# booting
apt-get install -y gparted

# echo "everythings good, but restart!"
#  command: reboot

# Other
# menu editor
apt-get install -y menulibre
apt-get install -y gnome-panel #?
apt-get install -y libcss

# dazu
apt-get -y install compizconfig-settings-manager # viele Konfigurationsmoeglichkeiten
apt-get -y install synaptic # bessere Packetverwaltung als Ubuntu Software Center
apt-get -y install brasero
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

#editors
# apt-get install openshot
# apt-get install pitivi
# aptitude update before!

# first update sources by writing into /etc/apt/sources.list 

# deb http://ftp.de.debian.org/debian/ wheezy main contrib non-free
# deb http://security.debian.org/ wheezy/updates main contrib
# deb http://ftp.de.debian.org/debian/ wheezy-updates main contrib non-free
# deb http://ftp.de.debian.org/debian/ wheezy-backports main contrib non-free

# you can erase the "non-free" if you want

# after all call aptitude update to get access to the "new" software




# programming
# apt-get install -y java-sdk newer version
# apt-get install -y eclipse # old version, newer to download
apt-get install -y vim-latexsuite
apt-get install -y latex2html
apt-get install -y texlive-base # installed by default
apt-get install -y texlive-latex-base # install latex base by default
# install vim latexsuite with the next 4 lines (order is important)
apt-get install -y vim-latexsuite 
apt-get install -y vim-addon-manager #aktivieren
vim-addons install latex-suite # fuer jeden user
# vim-addons status # kontrolle

