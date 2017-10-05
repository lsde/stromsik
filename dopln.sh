#!/bin/bash

feh --bg-scale ~/win4.png

TEXT=`zenity --forms --text="Doplňte následující věty (max 50 znaků):" \
--add-entry="a) V období nezaměstananosti jsem si uvědomil..." \
--add-entry="b) Mým přáním vždy bylo pracovat jako....." \
--add-entry="c) Proto jsem taky celý život....." \
--add-entry="d) Když se mi nepodařilo....., snažil jsem se....." \
--add-entry="e) Do budoucna se dívám......" \
--width=820 --height=480`

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
