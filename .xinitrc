if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set background
feh --randomize --bg-scale --no-fehbg ~/Pictures/wallpapers/* &

# use numpad
numlockx &

# for notifications
dunst &

# transparency
#picom -b --config ~/.config/picom.conf &

# status bar located in $HOME/.dotfiles/scripts
#dwmbar &

dwmblocks &

# polybar
#polybar example &

#nm-applet &

# hotkeys
sxhkd &

#map caps to escape and escape to caps
setxkbmap -option caps:swapescape &

#bspwm changes cursor to x on some windows, keep it as pointer
xsetroot -cursor_name left_ptr &

#doom emacs
#/usr/bin/emacs --daemon

#exec i3

exec dwm

#exec startplasma-x11

#exec bspwm
