#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.dotfiles/scripts/

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
export ANDROID_SDK_ROOT="$HOME/.android/avd"

[[ -f ~/.bashrc ]] && . ~/.bashrc


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

