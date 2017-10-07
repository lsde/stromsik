#!/bin/bash
cd `dirname $0`
unclutter -idle 0

while true; do
	feh --bg-scale `find resources/sporic*|sort -R | head -1`
	sleep 10
done
