#!/usr/bin/bash

# Simple, command-line to-do manager

          #################################################################################
         #                                                                               #
        #   ////////   /////   //////    /////             //////  //       ////////    #
       #      //     //   //  //   //  //   //           //       //          //       #
      #      //     //   //  //   //  //   //           //       //          //       #
     #      //     //   //  //   //  //   //  ///////  //       //          //       #
    #      //     //   //  //   //  //   //           //       //          //       #
   #      //     //   //  //   //  //   //           //       //          //       #
  #      //      /////   //////    /////             //////  ///////  ////////    #
 #                                                                               #
#################################################################################

# Default location to store information to
SETTINGS_FILE="$HOME/.todo"

# The "usage" file to read if no option is given or help is requested
HELP_FILE="$(dirname "$0")/usage_file"

# Load the default colors file
. $(dirname "$0")/colors/pastel

# Import all the functions from the functions subdirectory
. $(dirname "$0")/functions/import_functions.sh

# Try creating a settings file, if one does not exist
if [ ! -f "${SETTINGS_FILE}" ]; then
    create "${SETTINGS_FILE}"
fi

# No argument / function called; default to help/usage
if [ "$#" == 0 ]; then
    help
    exit
fi

# See what option was toggled/provided, default to help/usage
case $1 in
    
    # Add item
    -a | -add | --add )     shift
                            add "$@"
                            exit 0
                            ;;

    # Remove item
    -r | -rm | --remove )   shift
                            remove "$@"
                            exit 0
                            ;;
    
    # List all items
    -l | -ls | --list )     shift
                            list
                            exit 0
                            ;;
    
    # Complete a task
    -c | --complete )       shift
                            complete "$@"
                            exit 0
                            ;;
    
    # Clear / remove all tasks
    -clear | --clear )      clear_all
                            exit 0
                            ;;

    # Help/usage
    -h | --help )           shift
                            help "$@"
                            exit 0
                            ;;

    # Not recognized, default to help/usage
    * )                     shift
                            echo "Unknown command."
                            help "$@"
                            exit 1
                            ;;
esac
