#!/usr/bin/bash

# Clear all the stored todo entries
clear_all() {
    
    echo -n "Clear all stored entries? (Y/N): "
    read RESPONSE

    # Read the response
    case $RESPONSE in

        y | Y )     echo "Clearing!"
                    echo "" > "${SETTINGS_FILE}"
                    ;;

        n | N )     exit 1
                    ;;

        * )         echo "Invalid response, exiting."
                    exit 1
                    ;;
    esac   
}