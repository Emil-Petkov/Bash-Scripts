#!/bin/bash

TARGET=${1:-.}

if [ ! -d "$TARGET" ]; then
	echo "[!] Directory does not exist: $TARGET"
	exit 1
fi

echo "[+] Scanning in: $TARGET"
sleep 1

find "$TARGET" -type f -exec ls -l {} \; 2>/dev/null
