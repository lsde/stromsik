#!/bin/bash
cd `dirname $0`

zenity --question --text "Chcete opravdu vytisknout soubor KACENKA.STL ?"
sleep 5 | zenity --progress --pulsate --no-cancel --auto-close --text="Probíhá tisk.."
zenity --error --text "Tisk se nezdařil."
aplay resources/error.wav

