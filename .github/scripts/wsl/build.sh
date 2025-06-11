#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../../../config.sh

echo "::group::Build"
  echo $FOO $BAR
echo "::endgroup::"
