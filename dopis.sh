#!/bin/sh

FILE=`dirname $0`/dopis.txt

feh --bg-scale ~/win4.png

TEXT=`zenity --text-info --title="Průvodní dopis" --filename=$FILE --editable --width=820 --height=480`

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
