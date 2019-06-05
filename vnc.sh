#!/bin/bash
cd `dirname $0`

feh --bg-scale resources/win3.png

function start {
	vncviewer ltsp225.local -FullScreen -FullColor -ViewOnly -Shared -UseLocalCursor
}

function stop {
	pkill -f vncviewer
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
          
