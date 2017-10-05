#!/bin/bash

FILE=`dirname $0`/dotaznik.html

feh --bg-scale ~/win5.png

TEXT=`zenity --text-info --title="Dotazník" --filename=$FILE --html --width=820 --height=480`

case $? in
    0)
	aplay ~/pincl.wav
	feh --bg-scale ~/win3.png
	;;
    *)
	aplay ~/vrr.wav
	$0
	;;
esac
