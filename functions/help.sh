#!/usr/bin/bash

help() {
    if [ "$*" == "" ]; then
        echo "No arguments provided."
    fi

    cat "${HELP_FILE}"
}