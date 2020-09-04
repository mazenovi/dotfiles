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

alias gti='git'
alias gpg='gpg2'

alias m="bash ~/.cmd-tools/m/utils.sh"
alias m_="bash ~/dev/tools/m/utils.sh"

alias cmus-path="lsof -p $(pgrep cmus)"

alias vpn="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-cri.ovpn"
alias vpn-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-cri-udp.ovpn"
alias vpn-etu="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-etu.ovpn"
alias vpn-etu-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-etu-udp.ovpn"
alias vpn-prof="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-prof.ovpn"
alias vpn-prof-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-prof-udp.ovpn"
alias vpn-test="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-test.ovpn"
alias vpn-test-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-test-udp.ovpn"

alias youtube-mp3-dl="youtube-dl --extract-audio --audio-format mp3"
