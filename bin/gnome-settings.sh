#!/usr/bin/env sh

# Terminate already running bar instances
if pgrep -x gsd-xsettings >/dev/null; then
    sleep 1;
else
    /usr/lib/gsd-xsettings
fi

