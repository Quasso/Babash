#!/bin/sh

INSTALLATION_NARRATOR=true

#
#
#                                           babash
#                                     ============
#              A lightweight shell script "module"
#                  With some built-in conveniences
#                      for writing pure shell apps
#
#
#

# Note: this is written in pure shell for now, not bash
# which could have benefits but also restricts where
# this can be imported.

source $PWD/src/core/index.sh

source $PWD/src/output/index.sh
bb_output_file_loaded "Output"

function bb_output_file_loaded() {
    NAME=$1
    SUBMOD=$2

    if [[ $INSTALLATION_NARRATOR == true ]]; then
        if [[ $SUBMOD == true ]]; then
            bb_info "[babash] The submodule '_${NAME}' loaded successfully."
        else
            bb_success "[babash] The module '${NAME}' loaded successfully."
        fi
    fi
}

bb_output_file_loaded "Core"

source $PWD/src/extensions/index.sh
bb_output_file_loaded "Extensions"

bb_output_file_loaded "babash shell helper"
