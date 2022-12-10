#!/bin/sh

#
#
#
# SCAFFOLDING
#
#
#

function bb_style_and_colour_combine() {
    TEXT=$1
    KIND=$2
    # echo "TEXT: $TEXT"
    # echo "KIND: $KIND"
    color_text "$TEXT" $KIND

    # echo "C_TEXT: $COLOURED_TEXT"
    style_text 'bold' "$COLOURED_TEXT"
}

function bb_success() {
    TEXT=$1

    # bb_multiline_echo 1
    bb_style_and_colour_combine "$TEXT" 2 # green
    bb_border
}

function bb_info() {
    TEXT=$1
    bb_style_and_colour_combine "$TEXT" 4 # blue
}

function bb_error() {
    TEXT=$1
    bb_style_and_colour_combine "$TEXT" 1 # red
}

function bb_output_file_loaded() {
    NAME=$1
    SUBMOD=$2

    if [[ $INSTALLATION_NARRATOR == true ]]; then
        if [[ $SUBMOD == true ]]; then
            bb_info "[babash] The submodule '_${NAME}' loaded successfully."
        else
            bb_success "[babash] The module '${NAME}' loaded successfully."
        fi
    fi
}

# bb_success "test success!!!!!!!!!!"
# bb_error "test success!!!!!!!!!!"
