#!/bin/bash


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

# call first subroutine
./subroutines/selectedInstallations.sh


# -d 
# download only, doesn't install

# call bigPackages.sh to ask a question
./subroutines/bigPackages.sh

# install vim in .vim directory
./subroutines/vimInstallation.sh

# clone important bash repository
./subroutines/cloneAndLink.sh




# apt-get install -y ...
# -y =Yes Option, Noninteractive say Yes to every question


echo "everything's good, but please restart your machine"

