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

#edit rc files
alias vrc='vim ~/.vimrc'
alias brc='vim ~/.bashrc'
alias ba='vim ~/.bash_aliases'
alias ic='vim ~/.config/i3/config'
alias is='vim ~/.config/i3status/config'
alias web='touch index.html style.css'

#git commands
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gp='git push origin master'
alias gi='git init'

#sudo commands
alias sud='sudo apt-get update'
alias sug='sudo apt-get upgrade'
alias si='sudo apt-get install'

#custom cd
c() {
    cd "$1";
    ls;
}
alias cd='c'

#custom mkdir
mkd() {
    mkdir "$1";
    cd "$1";
}
alias mkdir='mkd'
