#!/bin/bash

# Hard mode: ON
mapfile -t victims < ~/Desktop/ip.txt

if [[ ${#victims[@]} -eq 0 ]]; then
    echo "[-] File is empty or missing."
    exit 1
fi

for ip in "${victims[@]}"; do
echo "[+] Scanning $ip" ...
done

############################

for x in {1..10}; do
    echo $x
done

############################

# With file
for ip in $(cat ip.txt); do
    echo $ip
done

############################
# BEST PRACTICE
mapfile -t targets < ip.txt

for ip in "${targets[@]}"; do
    echo "[+] Scanning $ip ..."
done

############################

for y in $(seq 1 5); do
    echo "$y.."
    sleep 1
done
echo "BOOM!"
