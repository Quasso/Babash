#!/bin/sh

#
#
# CONFIG: before everything else!
#
#

# Main config file, can be edited to change functionality
source $PWD/src/core/config/_config.sh

# THIS MUST BE SOURCED FIRST, EACH SUBSEQUENT SOURCE MAY USE IT!
source $PWD/src/core/config/_global-defaults.sh

#
#
# END CONFIG
#
#

source $PWD/src/core/_debug.sh

bb_debug_echo "Core index.sh file loaded."

source $PWD/src/core/_validation.sh
