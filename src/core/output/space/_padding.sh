#!/bin/sh

function bb_multiline_echo() {
    COUNT=$1

    for i in $(seq 1 $COUNT); do
        echo
    done
}

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

bb_output_file_loaded "padding" $INSTALLATION_NARRATOR
