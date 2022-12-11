#!/bin/sh

echo
echo "Running babash setup $PWD..."
echo

INSTALLATION_NARRATOR=true

# cd $PWD/src

source $PWD/src/babash.sh
RES=$?

if [[ $RES == 0 ]]; then
    echo "Babash loaded, will be used to install babash (yup)"
    bb_check_if_dir_exists "$HOME/.babash/"
    bb_success "Installing babash.sh into HOME..."
    cp -r "$PWD/src/" "$HOME/.babash/"

    bb_success "Enabling execution of the main babash.sh script..."
    BABASH_SCRIPT="$HOME/.babash/babash.sh"
    chmod +x $BABASH_SCRIPT
    bb_success "Babash CLI was installed."

    bb_multiline_echo 2
    bb_border
    bb_success "Try adding the following lines to your shell config file (e.g. .zshrc):"
    echo 'BABASH_SCRIPT="$HOME/.babash/babash.sh"'
    echo 'source $BABASH_SCRIPT'
    bb_border
    bb_multiline_echo 2
    INSTALLATION_NARRATOR=false
else
    echo "Failed to load babash, which is needed to run babash install."
fi
