#!/bin/bash
cd `dirname $0`

while true; do
	feh --bg-scale `ls ~/resources/*png|grep -v plaz|grep -v opona|sort -R|head -1`
done

