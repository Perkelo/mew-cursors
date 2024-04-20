#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
THEME_NAME=$(cat "$SCRIPT_DIR/cursor.theme" | grep -Eo "Name=.*" | sed "s|Name=\(.*\)|\1|g")
CURSORS_DIR="$HOME/.icons"
INSTALL_DIR="$CURSORS_DIR/$THEME_NAME"

echo "Uninstalling $THEME_NAME from $INSTALL_DIR"
if [ -d "$INSTALL_DIR" ]
then
    rm -rf "$INSTALL_DIR"
    echo "Done!"
else
    echo "$THEME_NAME is not installed in $CURSORS_DIR"
    exit 1
fi