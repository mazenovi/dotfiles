#!/usr/bin/bash

sudo apt-get install -y vim-nox meld > /dev/null 2>&1

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

[[ -L ~/.vimrc ]] || {
    rm -rf ~/.vimrc > /dev/null 2>&1 ;
    ln -s ${DIR}/.vimrc ~/.vimrc
}

[[ -L ~/.gitconfig ]] || {
    rm -rf ~/.gitconfig > /dev/null 2>&1 ;
    ln -s ${DIR}/.gitconfig ~/.gitconfig
}

[[ -L ~/.bashrc ]] || {
    rm -rf ~/.bashrc > /dev/null 2>&1 ;
    ln -s ${DIR}/.bashrc ~/.bashrc
}

[[ -L ~/.bash_aliases ]] || {
    rm -rf ~/.bash_aliases > /dev/null 2>&1 ;
    ln -s ${DIR}/.bash_aliases ~/.bash_aliases
}

[[ -L ~/.profile ]] || {
    rm -rf ~/.profile > /dev/null 2>&1 ;
    ln -s ${DIR}/.profile ~/.profile
}

mkdir -p ~/.cmd-tools

[[ -d ~/.cmd-tools/bash-git-prompt ]] || git clone https://github.com/magicmonty/bash-git-prompt.git ~/.cmd-tools/bash-git-prompt --depth=1 > /dev/null 2>&1
[[ -f ~/.cmd-tools/gpgenv.sh ]] ||  wget https://raw.githubusercontent.com/themouette/dotfiles/master/zsh/zshrc.d/gnupg -O ~/.cmd-tools/gpgenv.sh > /dev/null 2>&1

[[ -d ~/.vim ]] || curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null 2>&1

vim +PlugInstall +qall

echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"
