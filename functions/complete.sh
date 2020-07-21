#!/usr/bin/bash

complete() {

    # Ensure a number was given
    if [ "$1" == "" ]; then
        echo "Did not give a number."
        exit 1
    fi

    # Verify that the number is valid
    number='^[0-9]+$'
    if ! [[ $1 =~ $number ]] ; then
        echo "Did not specify a number."
        exit 1
    fi

    # Delete the line with sed
    sed -i "${1}d" "${SETTINGS_FILE}"
    echo "Completed!"
}