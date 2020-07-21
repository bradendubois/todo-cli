#!/usr/bin/bash

remove() {

    echo "Remove called."

    # Assume only one value given
    LOWER=$1
    UPPER=$1

    # If multiple numbers are given, ask for a confirmation
    if [ "$#" -gt 1 ]; then

        # Bump the upper bound to the second number given
        UPPER=$2
    
        echo -n "Range specified: Delete lines ${LOWER}-${UPPER}? (Y/N): "
        read response

        # Read the response
        case $response in

            y | Y )     ;;

            n | N )     exit 1;;

            * )         echo "Invalid response, exiting."
                        exit 1;;
        esac   
    fi
    
    # Use sed to rewrite the file in-place and delete the range of lines
    sed -i "${LOWER},${UPPER}d" "${SETTINGS_FILE}"
}