#!/usr/bin/bash

SETTINGS_FILE="$HOME/.todo"

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

# Simple, command-line to-do manager

# Import all the functions from the functions subdirectory
. $(dirname "$0")/functions/import_functions.sh

# Import the functions that control loading/creating settings
. $(dirname "$0")/settings/load.sh
. $(dirname "$0")/settings/create.sh
. $(dirname "$0")/colors/pastel


# Try creating a settings file, if one does not exist
if [ ! -f "${SETTINGS_FILE}" ]; then
    create "${SETTINGS_FILE}"
fi

# Load the configuration file
load()

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
    -r | -rm )              shift
                            remove "$@"
                            exit 0
                            ;;
    
    # List all items
    -l | -ls )              shift
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
                            help "$@"
                            exit 1
                            ;;
esac
