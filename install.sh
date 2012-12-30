#!/usr/bin/bash

# install exuberant tags for taglist.vim
sudo apt-get -y install exuberant-ctags bash-completion

# update vim to 7.3 (7.1 default on debian)
sudo echo "deb http://ftp.de.debian.org/debian sid main" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y remove vim-common vim-runtime vim-gtk vim-gui-common
sudo apt-get -y install vim-common vim-runtime vim-gnome
sudo sed '$d' < /etc/apt/sources.list > tmp #; mv file2 file1
sudo mv tmp /etc/apt/sources.list
sudo apt-get update

# backup all dotfiles
mkdir -p $HOME/.backup-profile
if [ -f $HOME/.bashrc ]
then
  mv $HOME/.bashrc $HOME/.backup-profile/.bashrc
fi
if [ ! -L $HOME/.bashrc ]
then
  rm $HOME/.bashrc
fi
if [ -f $HOME/.gitconfig ]
then
  mv $HOME/.gitconfig $HOME/.backup-profile/.gitconfig
fi
if [ ! -L $HOME/.gitconfig ]
then
  rm $HOME/.gitconfig
fi
if [ -f $HOME/.vimrc ]
then
  mv $HOME/.vimrc $HOME/.backup-profile/.vimrc
fi
if [ ! -L $HOME/.vimrc ]
then
  rm $HOME/.vimrc
fi
if [ -f $HOME/.vim ]
then
  mv $HOME/.vim $HOME/.backup-profile/.vim
fi
if [ ! -L $HOME/.vim ]
then
  rm $HOME/.vim
fi

# copy all file preference
CURRENT=`pwd`

ln -s $CURRENT/.bashrc $HOME/.bashrc
ln -s $CURRENT/.gitconfig $HOME/.gitconfig
ln -s $CURRENT/.vimrc $HOME/.vimrc
ln -s $CURRENT/.vim $HOME/.vim

echo "Installed !"
