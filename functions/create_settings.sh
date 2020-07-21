#!/usr/bin/bash

# This is the location of the default/example settings
DEFAULT_FILE=$(dirname -- "$(readlink -f -- "$BASH_SOURCE")")/example_settings

# Create the default settings file in ~/.todo
create() {

    # Ensure the source settings exists
    if [ ! -f "${DEFAULT_FILE}" ]; then
        echo "The default settings file could not be found."
        exit -1
    fi

    # Specific path exists but as a directory
    if [ -d "${DEFAULT_FILE}" ]; then
        echo "The default settings file exists as a directory."
        echo "- Try deleting/renaming the directory ${DEFAULT_FILE}."
        echo "- Try changing the name of the default file in 'todo.sh'."
        exit -5
    fi

    echo "Creating default settings file."
    cp "${DEFAULT_FILE}" "$1"
}