#!/bin/sh

#
#
#                                           babash
#                                     ============
#              A lightweight shell script "module"
#                  With some built-in conveniences
#                      for writing pure shell apps
#
#
#

# Note: this is written in pure shell for now, not bash
# which could have benefits but also restricts where
# this can be imported.

source $PWD/src/core/index.sh
bb_output_file_loaded "Core module"

source $PWD/src/output/index.sh
bb_output_file_loaded "Output module"

bb_padded_output "babash shell helper"
