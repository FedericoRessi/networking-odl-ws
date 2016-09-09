#!/usr/bin/env bash

set -ex

source /etc/profile

cd ${1:-~/devstack/}

if [ -f .stacking ]; then
    (./unstack.sh && rm -f .stacking) || true
fi

touch .stacking
./stack.sh
