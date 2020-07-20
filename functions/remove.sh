#!/usr/bin/bash

remove() {

    echo "Remove called."
    CONFIRM=0

    # If multiple numbers are given, ask for a confirmation
    if [ "$#" -gt 1 ]; then
        CONFIRM=1
    fi


    # Mark each line that will be deleted
    while [ "$1" != "" ]; do

        echo "Deleting #$1."
        shift

    done

    # Switch this to get a confirmation to remove
    if [ $CONFIRM -eq 1 ]; then
        echo "Called with multiple items!"
    fi

}