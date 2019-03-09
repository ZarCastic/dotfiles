alias ls='lsd'
alias la='lsd -a'
alias xrandr-home-setup='echo "Switching on DP2" && xrandr --output DP2 --auto && xrandr --output DP2 --right-of eDP1'
alias xrandr-not-home-setup='echo "Switching off monitor DP2" && xrandr --output DP2 --off'
alias g='nvim --remote-silent'
alias vpn='sudo vpnc --pid-file /var/run/vpnc/pid'
alias lock='xscreensaver-command -lock'
alias susp='systemctl suspend'
alias tum_vpnc='sudo vpnc --pid-file /var/run/vpnc/pid'
alias vpn-disconnect='sudo killall vpnc'
alias music='spotify'
alias l='lsd -la'
alias ping='ping -c 3'
alias meminfo='free -m -l -t'
alias matlab="matlab -nodesktop"

#some quickfixes
alias k="exit"

alias spotify="spotify --force-device-scale-factor=1.4"

# dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
