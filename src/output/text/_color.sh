#!/bin/sh

#
#
#
# COLOUR SETTINGS via tput
#
#
#

# Num  Colour    #define         R G B

# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1

BB_COL_BLACK=$(tput setaf 0)
BB_COL_RED=$(tput setaf 1)
BB_COL_GREEN=$(tput setaf 2)
BB_COL_YELLOW=$(tput setaf 3)
BB_COL_BLUE=$(tput setaf 4)
BB_COL_MAGENTA=$(tput setaf 5)
BB_COL_CYAN=$(tput setaf 6)
BB_COL_WHITE=$(tput setaf 7)
BB_RESET=$(tput sgr0)

function color_text() {
    TEXT=$1
    COLOR_ID=$2 # 0-7 according to tpu setaf range

    echo "$(tput setaf $COLOR_ID)$TEXT${BB_RESET}"
}
# echo "${red}red text ${green}green text"

for index in $(seq 0 7); do
    color_text "Test colour functionality" $index
done

bb_output_file_loaded "color" $INSTALLATION_NARRATOR
