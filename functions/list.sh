#!/usr/bin/bash

list () {

    if [ "$(cat ${SETTINGS_FILE})" == "" ]; then
        echo "No items stored."
        exit 0
    fi

    echo -e $(cat ${SETTINGS_FILE} | sed 's/$/\\n/' | sed 's/ /\\a /g')
}
