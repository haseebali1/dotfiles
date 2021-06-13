#
# ~/.bash_profile
#

export PATH=$PATH:$HOME/.dotfiles/scripts/:$HOME/.dotfiles/scripts/dwmblocks_scripts

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export XDG_CONFIG_HOME="$HOME/.config"
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
export ANDROID_SDK_ROOT="$HOME/.android/avd"
export SBUX_NPM_TOKEN="c644a938-da41-409a-a182-ec26fbdcac36"

[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

[[ -f /usr/share/git/completion/git-completion.bash ]] && . /usr/share/git/completion/git-completion.bash


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

