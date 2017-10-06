#!/bin/bash
cd `dirname $0`

feh --bg-scale resources/win3.png

function start {
	x11vnc -forever -shared -scale 1024x768 -cursor arrow &
	xpdf -fullscreen resources/stromsik_prezentace.pdf
}

function stop {
	pkill -f x11vnc
	pkill -f xpdf
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
          
