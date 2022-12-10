#!/bin/sh

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

function bb_check_if_dir_exists() {
    DIR=$1
    bb_debug_echo "Check dir exists $DIR"
    if [[ -d "$DIR" ]]; then
        bb_debug_echo "DIR EXISTS! $DIR"
        ls $DIR
    else
        bb_debug_echo "DIR DOES NOT EXIST: $DIR"
        mkdir $DIR
    fi
}

bb_output_file_loaded "validation" $INSTALLATION_NARRATOR
