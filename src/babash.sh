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

function check_is_var_set() {
    VAR=$1

    if [ -z ${VAR+x} ]; then
        echo "var is unset"
    else
        echo "var is set to '$VAR'"
    fi
}

function multiline_echo() {
    COUNT=$1

    for i in $(seq 1 $COUNT); do
        echo
    done
}

function padded_output() {
    CONTENT=$1
    PADDING_LINES=$2

    check_is_var_set $PADDING_LINES

    multiline_echo $PADDING_LINES

    echo $CONTENT

    multiline_echo $PADDING_LINES
}
