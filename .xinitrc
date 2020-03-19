if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set background
feh --bg-scale --no-fehbg ~/Pictures/purple/purplenightsky.jpg &

# use numpad
numlockx &

# for notifications
dunst &

# transparency
#picom -b --config ~/.config/picom.conf &

# status bar located in $HOME/.dotfiles/scripts
dwmbar &

# polybar
#polybar example &

#nm-applet &

# hotkeys
sxhkd &

#bspwm changes cursor to x on some windows, keep it as pointer
xsetroot -cursor_name left_ptr &

#exec i3

exec dwm

#exec bspwm
