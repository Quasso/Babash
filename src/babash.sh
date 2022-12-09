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

function bb_multiline_echo() {
    COUNT=$1

    for i in $(seq 1 $COUNT); do
        echo
    done
}

DEFAULT_VAL_PADDING_LINES=10
function bb_padded_output() {
    CONTENT=$1
    PADDING_LINES=$2

    bb_check_is_var_set $PADDING_LINES $DEFAULT_VAL_PADDING_LINES

    bb_multiline_echo $PADDING_LINES

    echo $CONTENT

    bb_multiline_echo $PADDING_LINES
}

function bb_sm_pad() {

}
