#!/bin/sh

#
#
# babash
# ============
# Lightweight shell script helper/class
#
#

# Note: this is written in pure shell for now, not bash
# which could have benefits but also restricts where
# this can be imported.

function debug_echo() {
    OUTPUT=$1
    if [[ $DEBUG_LOGS_ENABLED == true ]]; then
        echo "DEBUG: $OUTPUT"
    fi
}

function check_is_var_set() {
    VAR=$1
    DEFAULT_VAL=$2

    if [[ -z ${VAR+x} || ${VAR} == '' ]]; then
        debug_echo "var is unset, setting now to $DEFAULT_VAL"
        $VAR=$DEFAULT_VAL
    else
        debug_echo "var is set to '$VAR'"
    fi
}

function multiline_echo() {
    COUNT=$1

    for i in $(seq 1 $COUNT); do
        echo
    done
}

DEFAULT_VAL_PADDING_LINES=10
function padded_output() {
    CONTENT=$1
    PADDING_LINES=$2

    check_is_var_set $PADDING_LINES $DEFAULT_VAL_PADDING_LINES

    multiline_echo $PADDING_LINES

    echo $CONTENT

    multiline_echo $PADDING_LINES
}
