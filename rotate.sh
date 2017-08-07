#!/bin/bash
# Start Rotation Loop 
echo "Running ${ROTATION_SCRIPT:=/opt/rotate/pcapture_rotate} every ${INTERVAL_IN_HOURS:=12} hours... "
while true; do ${ROTATION_SCRIPT:=/opt/rotate/pcapture_rotate}; set -e; sleep $(( 60*60*${INTERVAL_IN_HOURS:=12} )); set +e; done
