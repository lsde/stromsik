#!/bin/bash
cd `dirname $0`

./vnc.sh  stop
feh --bg-scale resources/win4.png

QUESTION_A="a) V období nezaměstananosti jsem si uvědomil"
QUESTION_B="b) Mým přáním vždy bylo pracovat jako"
QUESTION_C="c) Proto jsem taky celý život"
QUESTION_DA="d) Když se mi nepodařilo"
QUESTION_DB="snažil jsem se"
QUESTION_E="e) Do budoucna se dívám"

while true; do
ANSWER_A=`zenity --forms --text="Doplňte následující věty (max 50 znaků):" --add-entry="${QUESTION_A}..."` && break
done
while true; do
ANSWER_B=`zenity --forms --text="Doplňte následující věty (max 50 znaků):" --add-entry="${QUESTION_B}..."` && break
done
while true; do
ANSWER_C=`zenity --forms --text="Doplňte následující věty (max 50 znaků):" --add-entry="${QUESTION_C}..."` && break
done
while true; do
ANSWER_D=`zenity --forms --text="Doplňte následující věty (max 50 znaků):" --add-entry="${QUESTION_DA}..." --add-entry "...${QUESTION_DB}..."` && break
done
while true; do
ANSWER_E=`zenity --forms --text="Doplňte následující věty (max 50 znaků):" --add-entry="${QUESTION_E}..."` && break
done

echo "$QUESTION_A $ANSWER_A
$QUESTION_B $ANSWER_B
$QUESTION_C $ANSWER_C
$QUESTION_DA $(echo $ANSWER_D|cut -d "|" -f1) $QUESTION_DB $(echo $ANSWER_D|cut -d "|" -f2)
$QUESTION_E $ANSWER_E" | tee -a dopln.txt | zenity --text-info

aplay `find resources/ukol3/*.wav|sort -R|head -1`
feh --bg-scale resources/win3.png
#./vnc.sh

