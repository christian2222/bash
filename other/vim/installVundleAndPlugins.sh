# install accorsing to the installation instructions on:
# https://github.com/VundleVim/Vundle.vim
# apt-get install gvim # bundle containing:
sudo apt-get install vim-gtk
sudo apt-get install vim-gnome
sudo apt-get install git # needed to install Vundle and all other Plugins
sudo apt-get install curl # required for search
# do not touch .vimrc because it could exist already
# touch ~/.vimrc 
# ATTENTION: only if it not exists
# mkdir -p no error if existing, make parent directory as needed
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
# setup Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# pathogen.vim installed in ~/.vim/autoload 
#install git with apt-get install
# git clones
git clone https://github.com/VundleVim/Vundle.vim.git #use PuginInstall
git clone http://github.com/mattn/emmet-vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone http://github.com/tpope/vim-surround
# git clone https://github.com/wookiehangover/jshint.vim # jshint2 is installed below
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/vim-scripts/FuzzyFinder
git clone https://github.com/itchyny/lightline.vim
git clone https://github.com/Lokaltog/vim-easymotion
git clone https://github.com/Shutnik/jshint2.vim
git clone https://github.com/skammer/vim-css-color
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/msanders/snipmate.vim.git
git clone https://github.com/kien/ctrlp.vim.git
 
#bufxplorer no git found
#Alternate (a.vim) no git found

git clone https://github.com/vim-scripts/Gundo.git
git clone https://github.com/tpope/vim-abolish.git
git clone https://github.com/matteocrippa/awesome-vim.git # list of awesome vim plugins
# web plugins (Youtube)
# Surround, snipmate, tcomment, MRU, FuzzyFiunder, NerdTree, Matchit

# All git clones
 git clone https://github.com/tpope/vim-surround.git
 git clone https://github.com/rayburgemeestre/phpfolding.vim.git
 git clone https://github.com/scrooloose/syntastic.git
 git clone https://github.com/mattn/emmet-vim.git
 git clone https://github.com/reid/node-jslint.git
 git clone https://github.com/krampstudio/webvim.git
 git clone https://github.com/VundleVim/Vundle.vim.git
 git clone https://github.com/scrooloose/nerdtree.git
 git clone https://github.com/vim-scripts/FuzzyFinder.git
 git clone https://github.com/itchyny/lightline.vim.git
 git clone https://github.com/easymotion/vim-easymotion.git
 git clone https://github.com/tpope/vim-surround.git
 git clone https://github.com/mattn/emmet-vim.git
 git clone https://github.com/Shutnik/jshint2.vim.git
 git clone https://github.com/skammer/vim-css-color.git
 git clone https://github.com/maxbrunsfeld/vim-yankstack.git
 git clone https://github.com/moll/vim-bbye.git
 git clone https://github.com/kien/ctrlp.vim.git
 git clone https://github.com/scrooloose/nerdtree.git
 git clone https://github.com/vim-airline/vim-airline.git
 git clone https://github.com/rking/ag.vim.git
 git clone https://github.com/Slava/vimrc.git
 git clone https://github.com/tpope/vim-pathogen.git
 git clone https://github.com/tpope/vim-fugitive.git
 git clone https://github.com/tpope/vim-sensible.git


# exuberant ctags install before by zip file

# Put the following code to the top of your .vimrc

# add and remove needed Plugins...

# 	sof .vimrc

# extend your .vimrc at the end
echo "set nocompatible              \" be iMproved, required" >> .vimrc
echo "filetype off                  \" required" >> .vimrc
echo "" >> .vimrc
echo "\" set the runtime path to include Vundle and initialize" >> .vimrc
echo "set rtp+=~/.vim/bundle/Vundle.vim" >> .vimrc
echo "call vundle#begin()" >> .vimrc
echo "\" alternatively, pass a path where Vundle should install plugins" >> .vimrc
echo "\"call vundle#begin('~/some/path/here')" >> .vimrc
echo "" >> .vimrc
echo "\" let Vundle manage Vundle, required" >> .vimrc
echo "Plugin 'VundleVim/Vundle.vim'" >> .vimrc
echo "" >> .vimrc
echo "\" The following are examples of different formats supported." >> .vimrc
echo "\" Keep Plugin commands between vundle#begin/end." >> .vimrc
echo "\" plugin on GitHub repo" >> .vimrc
echo "Plugin 'tpope/vim-fugitive'" >> .vimrc
echo "\" plugin from http://vim-scripts.org/vim/scripts.html" >> .vimrc
echo "\" Plugin 'L9'" >> .vimrc
echo "\" Git plugin not hosted on GitHub" >> .vimrc
echo "\" Plugin 'git://git.wincent.com/command-t.git'" >> .vimrc
echo "\" git repos on your local machine (i.e. when working on your own plugin)" >> .vimrc
echo "\" Plugin 'file:///home/gmarik/path/to/plugin'" >> .vimrc
echo "\" The sparkup vim script is in a subdirectory of this repo called vim." >> .vimrc
echo "\" Pass the path to set the runtimepath properly." >> .vimrc
echo "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}" >> .vimrc
echo "\" Install L9 and avoid a Naming conflict if you've already installed a" >> .vimrc
echo "\" different version somewhere else." >> .vimrc
echo "Plugin 'ascenator/L9', {'name': 'newL9'}" >> .vimrc
echo "" >> .vimrc
echo "\" All of your Plugins must be added before the following line" >> .vimrc
# own plugins
echo "Plugin 'mattn/emmet-vim.git'" >> .vimrc
echo "Plugin 'scrooloose/nerdtree.git'" >> .vimrc
echo "Plugin 'easymotion/vim-easymotion.git'" >> .vimrc
echo "Plugin 'tpope/vim-surround.git'" >> .vimrc
echo "Plugin 'Shutnik/jshint2.vim.git'" >> .vimrc
echo "Plugin 'skammer/vim-css-color.git'" >> .vimrc
echo "Plugin 'kien/ctrlp.vim.git'" >> .vimrc
echo "Plugin 'scrooloose/nerdtree.git'" >> .vimrc
echo "Plugin 'tpope/vim-pathogen.git'" >> .vimrc
echo "Plugin 'vim-sensible.git'" >> .vimrc
echo "Plugin 'krampstudio/webvim.git'" >> .vimrc
echo "Plugin 'Valloric/YouCompleteMe'" >> .vimrc
# echo "Plugin ''" >> .vimrc
# echo "Plugin ''" >> .vimrc
# echo "Plugin ''" >> .vimrc
echo "call vundle#end()            \" required" >> .vimrc
echo "filetype plugin indent on    \" required" >> .vimrc
echo "\" To ignore plugin indent changes, instead use:" >> .vimrc
echo "\"filetype plugin on" >> .vimrc
echo "\"" >> .vimrc
echo "\" Brief help" >> .vimrc
echo "\" :PluginList       - lists configured plugins" >> .vimrc
echo "\" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate" >> .vimrc
echo "\" :PluginSearch foo - searches for foo; append `!` to refresh local cache" >> .vimrc
echo "\" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal" >> .vimrc
echo "\"" >> .vimrc
echo "\" see :h vundle for more details or wiki for FAQ" >> .vimrc
echo "\" Put your non-Plugin stuff after this line" >> .vimrc

#	eof .vimrc

# Two possibilities to install Plugins listed in .vimrc
#1) launch vim and run :PluginInstall
#2) vim + PluginInstall +qall # from commandline

#Note: :PluginList inside vim shows all Plugins from your .vimrc

# install [nodejs] to make [:call HtmlBeautify()] to work
# Not necessary, because gvim 7.4 (and hopefully also higher) can use
# the [=] command in visualmode!!!
# apt-get install nodejs

