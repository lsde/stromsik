#!/bin/bash
cd `dirname $0`

./vnc.sh  stop
feh --bg-scale resources/win4.png

TEXT=`zenity --forms --text="Co děláte v případě nezaměstnanosti. Seřaďte následující úkony podle důležitosti. 1-7" \
--add-entry="Přihlásit se na Úřadu práce." \
--add-entry="Zlepšit hygienu." \
--add-entry="Navštěvovat častěji koupaliště." \
--add-entry="Ohlásit svůj stav zdravotní pojišťovně." \
--add-entry="Koupit si psa." \
--add-entry="Přihlásit se do rekvalifikačního kurzu Úvod do práce s PC." \
--add-entry="Volný čas věnovat aktivněji ve prospěch Spolku ochranářů velryb." \
--width=820 --height=480`

case $? in
    0)
	aplay resources/pincl.wav
	feh --bg-scale resources/win3.png
	;;
    *)
	aplay resources/vrr.wav
	$0
	;;
esac
./vnc.sh start
