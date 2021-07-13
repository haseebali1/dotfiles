# other
alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias vpnui='/opt/cisco/anyconnect/bin/vpnui'
alias open='xdg-open'
alias r='ranger'
alias fm='vifmrun'
alias feh='feh -Z'

# navigation
alias h='cd'
alias d='cd ~/Documents'
alias dp='cd ~/Documents/projects'
alias dpc='cd ~/Documents/projects/c'
alias dpcc='cd ~/Documents/projects/c++'
alias dph='cd ~/Documents/projects/html'
alias dpp='cd ~/Documents/projects/python'
alias dl='cd ~/Downloads'
alias de='cd ~/Desktop'
alias V='cd ~/Videos'
alias p='cd ~/Pictures'
alias cnf='cd ~/.config'
alias dtf='cd ~/.dotfiles'
alias dtfs='cd ~/.dotfiles/scripts'
alias dtfc='cd ~/.dotfiles/.config'
alias ..='cd ..'
alias hh='ls -a --ignore . --ignore .. -d .??*'
alias srh='cd /srv/http'
alias dw='cd ~/.dotfiles/suckless/dwm'

#edit rc files
alias v='nvim'
alias vrc='vim ~/.vimrc'
alias brc='vim ~/.bashrc'
alias bp='vim ~/.bash_profile'
alias ba='vim ~/.dotfiles/.bash_aliases'
alias ic='vim ~/.config/i3/config'
alias is='vim ~/.config/i3status/config'
alias web='touch index.html style.css'
alias dwc='vim ~/.dotfiles/suckless/dwm/config.h'
alias ib='vim ~/install/install.sh'
alias src='vim ~/.config/sxhkd/sxhkdrc'
alias frc='vim ~/.config/vifm/vifmrc'

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
alias wili='nmcli device wifi list'
alias wico='nmcli device wifi connect -a'

j() {
    name=$(pwd | rev | cut -d '/' -f 1 | rev)
    touch $name.java
}

alias j='j'

extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
                   c=(bsdtar xvf);;
            *.7z)  c=(7z x);;
            *.Z)   c=(uncompress);;
            *.bz2) c=(bunzip2);;
            *.exe) c=(cabextract);;
            *.gz)  c=(gunzip);;
            *.rar) c=(unrar x);;
            *.xz)  c=(unxz);;
            *.zip) c=(unzip);;
            *)     echo "$0: unrecognized file extension: \`$i'" >&2
                   continue;;
        esac

        command "${c[@]}" "$i"
        ((e = e || $?))
    done
    return "$e"
}

alias extract='extract'

#graphics card optimus
alias cardon='sudo tee /proc/acpi/bbswitch <<<ON'
alias cardoff='sudo tee /proc/acpi/bbswitch <<<OFF'
alias cards='cat /proc/acpi/bbswitch'
