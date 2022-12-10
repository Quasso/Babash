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

bb_output_file_loaded_submod "dev/_validation"
