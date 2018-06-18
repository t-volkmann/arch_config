#!/usr/bin/env sh

log() {
    local now=$(date +"%Y-%m-%d %H:%M:%S")
    echo "${now} :: $1"
}

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --reload main &
polybar --reload external_monitor &

log "Polybar launched!"
