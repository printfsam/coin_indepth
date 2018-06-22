#!/bin/bash
# Script works except with providing an arg to a command
if [ "$1" ]; then
	echo Location of zcash-cli: $1

else
	echo Please enter location of zcash-cli as first arg
	exit
fi
trap "exit 1" INT

while true; do
	IFS= read -r -p cmd: ZCMD
	echo "$1 $ZCMD"
	$1 $ZCMD
	echo
	echo
done

