#!/usr/bin/bash

# Import each separate function from its own file

. $(dirname "$0")/functions/add.sh
. $(dirname "$0")/functions/clear_all.sh
. $(dirname "$0")/functions/help.sh
. $(dirname "$0")/functions/list.sh
. $(dirname "$0")/functions/remove.sh
