#!/usr/bin/bash

# install exuberant tags for taglist.vim
apt-get -y install exuberant-ctags bash-completion

# update vim to 7.3 (7.1 default on debian)
echo "deb http://ftp.de.debian.org/debian sid main" >> /etc/apt/sources.list
apt-get update
apt-get -y remove vim-common vim-runtime vim-gtk vim-gui-common
apt-get -y install vim-common vim-runtime
sed '$d' < /etc/apt/sources.list > tmp #; mv file2 file1
mv tmp /etc/apt/sources.list
sudo apt-get update

# backup all dotfiles
mkdir -p ~/.backup-profile
if [ -f ~/.bashrc ] && [ ! -L ~/.bashrc ]
then
  mv ~/.bashrc ~/.backup-profile/.bashrc
else
  rm ~/.bashrc
fi
if [ -f ~/.gitconfig ] && [ ! -L ~/.gitconfig ]
then
  mv ~/.gitconfig ~/.backup-profile/.gitconfig
else
  rm ~/.gitconfig
fi
if [ -f ~/.vimrc ] && [ ! -L ~/.vimrc ]
then
  mv ~/.vimrc ~/.backup-profile/.vimrc
else
  rm ~/.vimrc
fi
if [ -f ~/.vim ] && [ ! -L ~/.vim ]
then
  mv ~/.vim ~/.backup-profile/.vim
else
  rm ~/.vim
fi

# copy all file preference
CURRENT=`pwd`

ln -s $CURRENT/.bashrc ~/.bashrc
ln -s $CURRENT/.gitconfig ~/.gitconfig
ln -s $CURRENT/.vimrc ~/.vimrc
ln -s $CURRENT/.vim ~/.vim

echo "Installed !"
