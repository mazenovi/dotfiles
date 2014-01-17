#!/usr/bin/bash

# copy all file preference
CURRENT=`pwd`

ln -s $CURRENT/.bashrc /root/.bashrc
ln -s $CURRENT/.gitconfig /root/.gitconfig
ln -s $CURRENT/.vimrc /root/.vimrc
ln -s $CURRENT/.vim /root/.vim

echo "Installed !"
