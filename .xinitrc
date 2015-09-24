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

xrdb -merge .Xdefaults &
feh --bg-fill /home/jmccabe/Pictures/water.jpg

# conky | while read LINE; do xsetroot -name "$LINE"; done &

# exec dwm
exec /usr/local/bin/stumpwm