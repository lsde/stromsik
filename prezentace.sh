#!/bin/bash

feh --bg-scale ~/win3.png

function start {
	x11vnc -forever -shared -scale 1024x768 -cursor arrow &
	xpdf -fullscreen ~/stromsik_prezentace.pdf
}

function stop {
	killall x11vnc
	killall xpdf.real
}

case $1 in
        start)
		start
                ;;
        stop)
		stop
                ;;
        restart)
                stop
                start
                ;;
	*)
		start
		;;
esac
          
