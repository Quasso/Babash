#!/bin/sh

function bb_debug_echo() {
    OUTPUT=$1
    if [[ $DEBUG_LOGS_ENABLED == true ]]; then
        echo "DEBUG: $OUTPUT"
    fi
}

function bb_output_file_loaded() {
    NAME=$1

    echo "[babash] Congrats! ${NAME} loaded successfully."
}

function bb_output_file_loaded_submod() {
    NAME=$1

    echo "[babash] Congrats! The submodule '${NAME}' loaded successfully."
}

bb_output_file_loaded_submod "dev/_debug"
