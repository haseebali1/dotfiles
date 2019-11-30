#
# ~/.bash_profile
#
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

[[ -f ~/.bashrc ]] && . ~/.bashrc


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

