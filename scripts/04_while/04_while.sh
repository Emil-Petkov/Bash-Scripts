#!/bin/bash

while true
do
    echo "Running..."
    sleep 1
done


#####################

while pgrep -x "apache2" >/dev/null
do
    echo "[+] Apache is running"
    sleep 2
done

echo "[-] Apache stopped!"

#####################
# Monitoring
while [[ ! -f /tmp/done.signal ]]
do
    echo "[*] Waiting for signal file..."
    sleep 1
done

echo "[+] Received signal!"


######################
# Reading file
while read ip
do
    echo "[+] Scanning $ip"
done < ips.txt


######################
# Wait host
while ! ping -c1 10.10.10.5 >/dev/null
do
    echo "[-] Waiting for host..."
    sleep 1
done

echo "[+] Host is alive!"
