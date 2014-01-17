#!/usr/bin/bash

sudo apt-get update

# install exuberant tags for taglist.vim
sudo apt-get -y install exuberant-ctags bash-completion

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
