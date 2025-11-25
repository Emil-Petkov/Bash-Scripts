#!/bin/bash

print_menu() {
cat <<EOF
=====================================
        CHOOSE YOUR OPTION
=====================================
1) Internal IP
2) Router IP
3) Public IP
*) Exit
EOF
}

show_internal_ip() {
    ip addr show | grep "inet "
}

show_router_ip() {
    ip route | grep default
}

show_public_ip() {
    curl -4 ifconfig.me
}

print_menu
read -p "> " CHS

case "$CHS" in
    1) show_internal_ip ;;
    2) show_router_ip ;;
    3) show_public_ip ;;
    *) echo "Bye." ;;
esac
