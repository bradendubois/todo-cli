#!/usr/bin/bash

# Clear all the stored todo entries
clear_all() {
    
    echo -n "Clear all stored entries? (Y/N): "
    read RESPONSE

    if [ "${RESPONSE}" = "Y" -o "${RESPONSE}" = "y" ]; then
        echo "Clearing!"

    fi
}