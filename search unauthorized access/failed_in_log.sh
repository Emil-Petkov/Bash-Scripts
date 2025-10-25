#!/bin/bash

# Search for failed logins
echo "Enter log for analize:"
read LOGFILE

grep -iE '(fail|denied|error|unsuccessful)' "$LOGFILE" | grep -iE '(login|user|auth)' "$LOGFILE" | tee /dev/tty | wc -l | awk '{print "\033[1;31m--- TOTAL FAILS: ---\033[0m [" $1 "]"}'

