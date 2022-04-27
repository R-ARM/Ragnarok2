#!/bin/false

function down_upd()
{
	OLDDIR="$(pwd)"
	mkdir -p "$RAGNAROOT/tmp"
	cd "$RAGNAROOT/tmp"
	if [ -d "$3" ]; then
		cd "$3"
		git pull
	else
		git clone "$1" -b "$2" "$3"
	fi
	cd "$OLDDIR"
}

