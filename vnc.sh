#!/bin/sh

feh --bg-scale ~/win3.png
killall vncviewer
vncviewer 192.168.1.31 -FullScreen -FullColor -ViewOnly -Shared -UseLocalCursor
