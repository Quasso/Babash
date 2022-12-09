#!/bin/sh

function bb_debug_echo() {
    OUTPUT=$1
    if [[ $DEBUG_LOGS_ENABLED == true ]]; then
        echo "DEBUG: $OUTPUT"
    fi
}

function bb_check_is_var_set() {
    VAR=$1
    DEFAULT_VAL=$2

    if [[ -z ${VAR+x} || ${VAR} == '' ]]; then
        bb_debug_echo "var is unset, setting now to $DEFAULT_VAL"
        $VAR=$DEFAULT_VAL
    else
        bb_debug_echo "var is set to '$VAR'"
    fi
}
