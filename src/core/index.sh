#!/bin/sh

#
#
# CONFIG: before everything else!
#
#

source $PWD/src/core/ascii/_logo.sh

# Main config file, can be edited to change functionality
source $PWD/src/core/config/_config.sh

# THIS MUST BE SOURCED FIRST, EACH SUBSEQUENT SOURCE MAY USE IT!
source $PWD/src/core/config/_global-defaults.sh

#
#
# END CONFIG
#
#

#
#
# OUTPUT: utils to help with terminal output/formatting
#
#

source $PWD/src/core/output/index.sh
bb_output_file_loaded "Output"

#
#
# END OUTPUT
#
#

#
#
# DEV: utils to help while doing dev work
#
#

source $PWD/src/core/dev/_debug.sh
source $PWD/src/core/dev/_validation.sh

#
#
# END DEV
#
#
