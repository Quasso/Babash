#!/bin/sh

function bb_debug_echo() {
    OUTPUT=$1
    if [[ $DEBUG_LOGS_ENABLED == true ]]; then
        echo "DEBUG: $OUTPUT"
    fi
}

bb_output_file_loaded "debug" $INSTALLATION_NARRATOR
