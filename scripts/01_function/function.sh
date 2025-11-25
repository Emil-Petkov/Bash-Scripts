#!/bin/bash

# basic function
read -t 5 -p "Enter your name: " name
# -p option is used to prompt user for input
# -s option can be used to hide input
# after 5 seconds, if no input, name will be empty

# If no input after timeout.
if [[ -z "$name" ]]; then
    echo "No input received."
fi

# new way to define function
newway_func() {

# cat <<EOF for long text on many line or ASCII
cat <<EOF
++++++++++++++++
+    BANER     +
++++++++++++++++
EOF

    printf "My name is: %s\n" "$name"

}

newway_func

# old way to define function
function oldway() {
cat <<EOF

##############

EOF
    echo "alabala"
}

oldway