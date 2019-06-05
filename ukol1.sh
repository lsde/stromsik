#!/bin/bash
cd `dirname $0`

feh --bg-scale resources/win5.png

while true; do
zenity  --list  --text "Počítač je jako..." --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "pes" \
	FALSE "přítel" \
	FALSE "dobrý sluha ale zlý pán" \
	FALSE "nepřítel" >> dotaznik1.txt && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Vzal bych počítač..." --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "na koupaliště" \
	FALSE "na kopanou" \
	FALSE "do mlékárny" \
	FALSE "do práce" >> dotaznik2.txt && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Počítače pochází.." --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "z Asie" \
	FALSE "z Číny" \
	FALSE "z Tibetu" \
	FALSE "z Říma" >> dotaznik3.txt && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Zvládnutí počítače" --radiolist  --column "Vyber" --column "Možnost" \
	FALSE "omezuje pocit samoty" \
	FALSE "zvyšuje sebevědomí" \
	FALSE "vyžaduje spoustu sebeobětování" \
	FALSE "je nemožné" >> dotaznik4.txt && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Že je počítač zapnutý, poznám podle toho, že.." --radiolist  --column "Vyber" --column "Možnost" --width 500 --height 200 \
	FALSE "mu svítí obrazovka" \
	FALSE "vrčí" \
	FALSE "vrčí a svítí mu obrazovka" \
	FALSE "ani jedno z výše uvedeného, je to zcela jinak" >> dotaznik5.txt && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

while true; do
zenity  --list  --text "Při práci na počítači pijeme.." --radiolist  --column "Vyber" --column "Možnost" --width 600 --height 200 \
	FALSE "Neslazený čaj" \
	FALSE "Slazený čaj" \
	FALSE "Kefír" \
	FALSE "Pouze z uzavíratelných lahví či brčkem s přepadem proti zpětnému toku" >> dotaznik6.txt && break
done
aplay `find resources/ukol1/*.wav|sort -R|head -1`

feh --bg-scale resources/win3.png

