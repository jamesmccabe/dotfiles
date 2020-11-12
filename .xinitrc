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

# set capslock key as extra ctrl for emacs
setxkbmap -option ctrl:nocaps

xrdb -merge .Xdefaults &

exec /usr/local/bin/stumpwm
