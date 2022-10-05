# colors

eval "`dircolors -b`"
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias mute-snd='amixer -q -D pulse sset Master toggle'
alias raise-snd='amixer -q -D pulse sset Master 3%+'
alias low-snd='amixer -q -D pulse sset Master 3%-'

alias spot-play-pause='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause'
alias spot-next='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next'
alias spot-prev='dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous'

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

alias vpn="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-cri-tcp.ovpn"
alias vpn-cri-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-cri-udp.ovpn"
alias vpn-etu-tcp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-etu-tcp.ovpn"
alias vpn-etu-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-etu-udp.ovpn"
alias vpn-prof-tcp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-prof-tcp.ovpn"
alias vpn-prof-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-prof-udp.ovpn"
alias vpn-rescue-tcp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-rescue-tcp.ovpn"
alias vpn-rescue-udp="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-rescue-udp.ovpn"
alias vpn-test="sudo openvpn ~/cloud/limos/vimazeno/vpn/vpn-test.ovpn"

alias youtube-mp3-dl="youtube-dl --extract-audio --audio-format mp3"

alias dns-restart="sudo systemctl restart systemd-resolved"
alias dns-flush="sudo systemd-resolve --flush-cache"
alias dns-status="sudo resolvectl status"
