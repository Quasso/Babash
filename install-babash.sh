#!/bin/sh

echo
echo "Running babash setup $PWD..."
echo

# cd $PWD/src

source $PWD/src/babash.sh
RES=$?

if [[ $RES == 0 ]]; then
    echo "Babash loaded, will be used to install babash (yup)"
    bb_check_if_dir_exists "$HOME/.babash/"
else
    echo "Failed to load babash, which is needed to run babash install."
fi
