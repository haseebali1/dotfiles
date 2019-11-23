#other
alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias vpnui='/opt/cisco/anyconnect/hin/vpnui'
alias open='xdg-open'
alias r='ranger'

# navigation
alias h='cd'
alias d='cd ~/Documents'
alias dp='cd ~/Documents/projects'
alias dl='cd ~/Downloads'
alias de='cd ~/Desktop'
alias v='cd ~/Videos'
alias p='cd ~/Pictures'
alias dtf='cd ~/.dotfiles'
alias dtfs='cd ~/.dotfiles/scripts'
alias ..='cd ..'
alias hh='ls -a --ignore . --ignore .. -d .??*'
alias srh='cd /srv/http'
alias dw='cd ~/dwm'

#edit rc files
alias vrc='vim ~/.vimrc'
alias brc='vim ~/.bashrc'
alias ba='vim ~/.dotfiles/.bash_aliases'
alias ic='vim ~/.config/i3/config'
alias is='vim ~/.config/i3status/config'
alias web='touch index.html style.css'
alias dwc='vim ~/dwm/config.h'
alias ib='vim ~/install/install.sh'

#git commands
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gp='git push origin master'
alias gi='git init'

g() {
    git add .;
    git commit -m "$@";
    git push origin master;
}

alias g='g'

#pacman commands
alias spy='sudo pacman -Syu'
alias sps='sudo pacman -S'
alias spss='sudo pacman -Ss'
alias spr='sudo pacman -R'
alias spo='sudo pacman -Rns $(pacman -Qtdq)'


#custom cd
c() {
    cd "$@";
    ls -la;
}
alias cd='c'

#custom mkdir
mkd() {
    mkdir "$1";
    cd "$1";
}
alias mkdir='mkd'

#wifi
alias wion='nmcli radio wifi on'
alias wiof='nmcli radio wifi off'
