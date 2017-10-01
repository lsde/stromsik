#!/bin/sh

feh --bg-scale ~/win3.png
killall x11vnc
x11vnc -forever -shared -scale 1024x768 -cursor arrow
xpdf -fullscreen ~/stromsik_prezentace.pdf
