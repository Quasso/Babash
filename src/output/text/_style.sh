#!/bin/sh

DEFAULT_BORDER="=========================" # 25 =

function bb_border() {
    WIDTH=$1

    echo
    echo $DEFAULT_BORDER
    echo
}

# tput bold    # Select bold mode
# tput dim     # Select dim (half-bright) mode
# tput smul    # Enable underline mode
# tput rmul    # Disable underline mode
# tput rev     # Turn on reverse video mode
# tput smso    # Enter standout (bold) mode
# tput rmso    # Exit standout mode

STYLE_KINDS=('bold' 'dim' 'smul' 'rmul' 'rev' 'smso' 'rmso')
function style_text() {
    KIND=$1 # one of: bold, dim, smul, rmul, rev, smso, rmso
    TEXT=$2
    if [[ "${STYLE_KINDS[*]}" =~ "${KIND}" ]]; then
        # whatever you want to do when array contains value
        echo "$(tput $KIND)$TEXT${BB_RESET}"
    else
        echo $TEXT
    fi
}

bb_output_file_loaded "style" $INSTALLATION_NARRATOR
