# colors

eval "`dircolors -b`"
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls

lastFile() {
  find $1 -type f -printf "%C@ %p\n" | sort -rn | head -n 10;
}

alias ls='ls --color=auto'
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'
alias lf=lastFile
alias lm=lastFile
alias m="bash ~/cloud/limos/scripts/utils.sh"
alias vpn="sudo openvpn ~/cloud/limos/vimazeno/limos.ovpn"

# command

alias gti='git'
alias gpg='gpg2'
