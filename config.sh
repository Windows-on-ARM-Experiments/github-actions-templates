#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

CLEAN_BUILD=${CLEAN_BUILD:-0}
INSTALL_PACKAGE=${INSTALL_PACKAGE:-0}
NO_EXTRACT=${NO_EXTRACT:-0}
