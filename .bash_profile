#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.dotfiles/scripts/:$HOME/Downloads/jdk-13.0.2/bin/

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"

[[ -f ~/.bashrc ]] && . ~/.bashrc


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

