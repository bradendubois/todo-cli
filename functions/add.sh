#!/usr/bin/bash

add() {

    echo "Add called"

    PRIORITY=""

    # Parse whether a priority was given
    case $1 in

        # Low priority
        -l | --low )                shift
                                    echo -e "- ${LOW_PRIORITY}$*${NC}" >> "${SETTINGS_FILE}"
                                    ;;
        
        # Medium priority
        -m | --medium )             shift
                                    echo -e "- ${MEDIUM_PRIORITY}$*${NC}" >> "${SETTINGS_FILE}"                            
                                    ;;
        
        # High priority
        -h | --high )               shift
                                    echo -e "- ${HIGH_PRIORITY}$*${NC}" >> "${SETTINGS_FILE}"
                                    ;;
        
        # No priority specified
        * )                         echo -e "- $*" >> "${SETTINGS_FILE}"

    esac
}
