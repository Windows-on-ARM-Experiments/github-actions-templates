#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../../../config.sh

DEPENDENCIES=$1

if [ -n "$DEPENDENCIES" ]; then
  pacman -S --noconfirm \
    $DEPENDENCIES
fi
