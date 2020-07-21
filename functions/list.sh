#!/usr/bin/bash

list () {
    # echo "${LOW_PRIORITY}"
     # "${SETTINGS_FILE}" | sed -e "s/\${LOW_PRIORITY}/$LOW_PRIORITY/g" -e "s/\${NC}/${NC}/g"
    echo -e $(cat ${SETTINGS_FILE} | sed 's/$/\\n/' | sed 's/ /\\a /g')
}
