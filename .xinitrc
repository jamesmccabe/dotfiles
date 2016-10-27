#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/TTF
xset +fp /usr/share/fonts/misc
xset fp rehash

# set capslock key as extra ctrl for emacs
setxkbmap -option ctrl:nocaps

xrdb -merge .Xdefaults &
feh --bg-fill /home/jmccabe/Pictures/water.jpg

exec /usr/local/bin/stumpwm
