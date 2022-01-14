#!/bin/sh

#  build_config.sh
#
#  Created by Tomasz Kukułka on 14/01/2022.
#

PLIST_CONFIG_INPUT_FILE_PATH="${SRCROOT}/Configurations/Config-${CONFIGURATION}.plist"

if [ ! -f "$PLIST_CONFIG_INPUT_FILE_PATH" ] ; then
    echo "Config-${CONFIGURATION}.plist file not found!"
    exit 1
fi

while read -r line; do
    echo "$line"
done < $PLIST_CONFIG_INPUT_FILE_PATH
