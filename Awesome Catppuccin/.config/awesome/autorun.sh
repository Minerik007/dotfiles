#!/bin/sh

run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}


run "xrandr" --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --off --output HDMI-A-2 --primary --mode 1920x1080 --pos 1280x0 --rotate normal --output DVI-D-0 --off --output VGA-1-1 --mode 1280x1024 --pos 0x169 --rotate normal --output HDMI-1-1 --off --output HDMI-1-2 --off
run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/
run "sh" -c "sleep 50 && shutter --min_at_startup &"
run "compfy"
run "copyq"
run "mpv" --no-video ~/.config/retro-audio-logo-94648.mp3
run "exec" --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1" &
run "nm-applet"
# run ""
