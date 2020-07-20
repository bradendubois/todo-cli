#!/usr/bin/bash

add() {

    echo "Add called"

    PRIORITY=""

    # Parse whether a priority was given
    case $1 in

        # Low priority
        -l | --low )                PRIORITY="LOW"
                                    shift
                                    ;;
        
        # Medium priority
        -m | --medium )             PRIORITY="MEDIUM"
                                    shift
                                    ;;
        
        # High priority
        -h | --high )               PRIORITY="HIGH"
                                    shift
                                    ;;

    esac

    # Relay priority parsed
    if [ "${PRIORITY}" != "" ]; then
        echo "Priority: ${PRIORITY}"
    fi

    # Message that would be added
    echo "Message: $*"

}
