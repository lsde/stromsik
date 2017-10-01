#!/bin/bash

feh --bg-scale ~/win4.png

TEXT=`zenity --forms --text="Jaký je žebříček priorit pro nezaměstnaného? Ohodnoť známkou 1-5" --add-entry="Být řádně oholen" --add-entry="Mít doma uklizeno" --add-entry="Neztratit kontakt se zaměstnanými" --add-entry="Psychické rozpoložení" --add-entry="Peníze" --width=820 --height=480`

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
