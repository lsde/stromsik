#!/bin/bash
cd `dirname $0`

feh --bg-scale resources/win5.png

while true; do
zenity  --list  --text "Počítač je jako..." --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "pes" \
	FALSE "přítel" \
	FALSE "dobrý sluha ale zlý pán" \
	FALSE "nepřítel" && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Vzal bych počítač..." --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "na koupaliště" \
	FALSE "na kopanou" \
	FALSE "do mlékárny" \
	FALSE "do práce" && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Počítače pochází.." --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "z Asie" \
	FALSE "z Číny" \
	FALSE "z Tibetu" \
	FALSE "z Říma" && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Zvládnutí počítače" --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "omezuje pocit samoty" \
	FALSE "zvyšuje sebevědomí" \
	FALSE "vyžaduje spoustu sebeobětování" \
	FALSE "je nemožné" && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

feh --bg-scale resources/win3.png

