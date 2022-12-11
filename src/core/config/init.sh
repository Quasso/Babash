#!/bin/sh

function bb_output_file_loaded() {
    NAME=$1
    SUBMOD=$2

    if [[ $INSTALLATION_NARRATOR == true ]]; then
        if [[ $SUBMOD == true ]]; then
            echo "[babash] The submodule '_${NAME}' loaded successfully."
        else
            echo "[babash] The module '${NAME}' loaded successfully."
        fi
    fi
}

if [[ $INSTALLATION_NARRATOR == true ]]; then
    source $PWD/src/core/ascii/_logo.sh
fi

source $PWD/src/core/output/index.sh
bb_output_file_loaded "Output"

# Main config file, can be edited to change functionality
source $PWD/src/core/config/_config.sh

# THIS MUST BE SOURCED FIRST, EACH SUBSEQUENT SOURCE MAY USE IT!
source $PWD/src/core/config/_global-defaults.sh
