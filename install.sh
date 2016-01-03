#!/usr/bin/bash

# A script to install my development environments.
# see https://github.com/themouette/dotfiles

sudo apt-get install vim-nox tree

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Install vim configuration files
[[ -L ~/.vimrc ]] || {
    rm -rf ~/.vimrc > /dev/null 2>&1 ;
    ln -s ${DIR}/.vimrc ~/.vimrc
}
[[ -L ~/.vim ]] || {
    rm -rf ~/.vim > /dev/null 2>&1
    ln -s ${DIR}/.vim ~/.vim
}

# install Vundle if not already installed
[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vundle dependencies
vim +PluginInstall +qall

[[ ! -d ~/.vim/bundle/command-t/ ]] || {
    # Install command-t
    # Compilation is required
    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make
    cd $DIR
}
[[ -f /usr/share/fonts/misc/PowerlineSymbols.otf ]] || {
    # Install vim-airline/vim-powerline font
    sudo wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O /usr/share/fonts/misc/PowerlineSymbols.otf
    fc-cache -vf ~/.fonts/
    mkdir -p ~/.config/fontconfig/conf.d/
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -O ~/.config/fontconfig/conf.d/10-powerline-symbols.conf
}

[[ -L ~/.gitconfig ]] || {
    rm -rf ~/.gitconfig > /dev/null 2>&1 ;
    ln -s ${DIR}/.gitconfig ~/.gitconfig
}

[[ -L ~/.bashrc ]] || {
    rm -rf ~/.bashrc > /dev/null 2>&1 ;
    ln -s ${DIR}/.bashrc ~/.bashrc
}

[[ -L ~/.profile ]] || {
    rm -rf ~/.profile > /dev/null 2>&1 ;
    ln -s ${DIR}/.profile ~/.profile
}

echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"
