#!/bin/bash
cd `dirname $0`

while true; do
	feh `find resources/sporic*|sort -R | head -1`
	sleep 30
done
