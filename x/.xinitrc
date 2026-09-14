#!/bin/sh

xrandr --output DP-1 --primary --mode 2560x1440 --pos 0x360 --output DP-3 --mode 1920x1080 --pos 2560x1080 --output HDMI-1 --mode 1920x1080 --pos 2560x0

# portal service so firefox et al can open an upload file manager thing
export XAUTHORITY="${XAUTHORITY:-$HOME/.Xauthority}"
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

exec /usr/local/bin/dwm
