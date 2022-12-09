#!/bin/sh

function bb_debug_echo() {
    OUTPUT=$1
    if [[ $DEBUG_LOGS_ENABLED == true ]]; then
        echo "DEBUG: $OUTPUT"
    fi
}
