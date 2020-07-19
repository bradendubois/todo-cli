#!/usr/bin/bash

help() {
    if [ "$*" == "" ]; then
        echo "No arguments provided."
    fi

    echo "Todo-cli application."
}