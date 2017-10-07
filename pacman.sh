#!/bin/bash
cd `dirname $0`

feh --bg-scale resources/win3.png
amixer set PCM 85%
python resources/pacman/pacman.py
amixer set PCM 100%
