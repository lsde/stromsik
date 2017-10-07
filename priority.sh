#!/bin/bash
cd `dirname $0`

./vnc.sh  stop
feh --bg-scale resources/win4.png
mpv --loop inf ~/resources/tikot.wav &

TEXT=`zenity --forms --text="Co děláte v případě nezaměstnanosti. Seřaďte následující úkony podle důležitosti. 1-7" \
--add-entry="Přihlásit se na Úřadu práce." \
--add-entry="Zlepšit hygienu." \
--add-entry="Navštěvovat častěji koupaliště." \
--add-entry="Ohlásit svůj stav zdravotní pojišťovně." \
--add-entry="Koupit si psa." \
--add-entry="Přihlásit se do rekvalifikačního kurzu Úvod do práce s PC." \
--add-entry="Volný čas věnovat aktivněji ve prospěch Spolku ochranářů velryb." \
--width=820 --height=480`

aplay `find resources/ukol2/*.wav|sort -R|head -1`
pkill -f tikot.wav

./vnc.sh start
