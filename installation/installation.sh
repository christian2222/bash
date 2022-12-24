#!/bin/bash


# REPOSITORIES (PREPARATION)
add-apt-repository -y ppa:rvm/smplayer
# note: -y is yes to all queries
# not (yet) supported
# sudo add-apt-repository -y ppa:ubuntu-wine/ppa

# UNIVERSE (MORE SOFTWARE)
add-apt-repository  -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
# deb http://ftp.de.debian.org/debian/ wheezy main contrib non-free
# deb http://security.debian.org/ wheezy/updates main contrib
# deb http://ftp.de.debian.org/debian/ wheezy-updates main contrib non-free
# deb http://ftp.de.debian.org/debian/ wheezy-backports main contrib non-free

# you can erase the "non-free" if you want; after add of repositories perform apt-get update!
#sudo apt-get update
# update everything
call ./update.sh



# -d 
# download only, doesn't install

# call bigPackages.sh to ask a question
call ./subroutines/bigPackages.sh

# call first subroutine
call ./subroutines/selectedInstallations.sh

# call installation of vim
call ./subroutines/installVimPlugAsSudo.sh

# call an update
call ./update.sh

# install vim in .vim directory
# ./subroutines/vimInstallation.sh
# idea: let user in ~/dotfiles/ do the configuration

# clone important bash repository
# ./subroutines/cloneAndLink.sh
# don't do this as superuser; wrong home directory!




# apt-get install -y ...
# -y =Yes Option, Noninteractive say Yes to every question


echo "everything's good, but please restart your machine"

