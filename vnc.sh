#!/bin/bash

feh --bg-scale ~/win3.png

function start {
	vncviewer 192.168.1.31 -FullScreen -FullColor -ViewOnly -Shared -UseLocalCursor
}

function stop {
	killall vncviewer
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
          
