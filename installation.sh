sudo su
apt-get install dvbcut
apt-get install tree
apt-get install devede
apt-get install vim
apt-get install vim-gtk
apt-get install openjdk-11-jdk
apt-get install gparted
apt-get install texlive-base

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

