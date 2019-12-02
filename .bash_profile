#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.dotfiles/scripts/

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"

[[ -f ~/.bashrc ]] && . ~/.bashrc


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

