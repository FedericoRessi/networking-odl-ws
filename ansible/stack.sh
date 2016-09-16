#!/usr/bin/env bash

source /etc/profile || echo "Cannot find /etc/profile!"

set -ex

cd ~/devstack/

rm -fR .stacked
if [ -f .stacking ]; then
    (./unstack.sh && rm -f .stacking) || echo "Failed unstacking!"
fi

touch .stacking
./stack.sh && touch .stacked
