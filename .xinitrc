# set background
feh --bg-scale --no-fehbg ~/Pictures/purple_lion.jpg &

# use numpad
numlockx &

# for notifications
dunst &

# transparency
picom -b --config ~/.config/picom.conf &

# status bar located in $HOME/.dotfiles/scripts
dwmbar &

# hotkeys
sxhkd &

#exec i3

exec dwm
