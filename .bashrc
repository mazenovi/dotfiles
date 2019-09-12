[ -z "$PS1" ] && return

RED="\[\033[01;31m\]"
GREEN="\[\033[01;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[01;34m\]"
NO_COLOR="\[\033[0m\]"

export EDITOR=/usr/bin/vi
export HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(~\1)/'
}
    
if [ "$UID" -eq "0" ]; then
   PS1="${debian_chroot:+($debian_chroot)}$RED\u@\H$:$BLUE\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
else
   PS1="${debian_chroot:+($debian_chroot)}$GREEN\u@\H$BLUE:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# git
export GIT_SSL_NO_VERIFY=1
export GIT_PROMPT_ONLY_IN_REPO=1
export GIT_PROMPT_THEME=Crunch
# m
export M_DEFAULT_TARGET_DIR="~/cloud/limos/vimazeno"
export M_DEFAULT_CERT_DIR="~/cloud/limos/cri/certs"
export M_DEFAULT_RECIPIENT="vincent.mazenod@isima.fr"

source ~/.cmd-tools/bash-git-prompt/gitprompt.sh
source ~/.cmd-tools/gpgenv.sh

export PATH=~$PATH:~/.composer/vendor/bin:~/.local/bin/:~/.cmd-tools

export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

export VAULT_ADDR=https://vault.cri.local.isima.fr
export VAULT_USERNAME=vimazeno
complete -C /usr/local/bin/vault vault

export SSH_KEY_PATH="/home/mazenovi/.ssh/keys/limosadm"
export SSH_KEYS_PATH="/home/mazenovi/.ssh/ids"
export SSL_KEYS_PATH="/home/mazenovi/cloud/limos/cri/certs"
