#!/bin/sh

# Main config file, can be edited to change functionality
source $PWD/src/core/_config.sh

# THIS MUST BE SOURCED FIRST, EACH SUBSEQUENT SOURCE MAY USE IT!
source $PWD/src/core/_global-defaults.sh

source $PWD/src/core/_debug.sh

bb_debug_echo "Core index.sh file loaded."

source $PWD/src/core/_validation.sh
