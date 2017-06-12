#!/bin/sh

if [ -d "./bork" ]; then
	for borkfile in ./bork/*.sh; do
		echo "include $borkfile" >> ./borkfile.sh
	done
fi
bork compile borkfile.sh >> bork.sh
rm borkfile.sh
