#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../../../config.sh

WSLENV="$WSLENV:PATH/p" $@
