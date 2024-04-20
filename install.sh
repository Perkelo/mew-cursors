#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
THEME_NAME=$(cat "$SCRIPT_DIR/cursor.theme" | grep -Eo "Name=.*" | sed "s|Name=\(.*\)|\1|g")

if [ -z "$1" ]
then
    CURSORS_DIR="$HOME/.icons"
else
    case "$1" in
        -d | --directory)
            if [ -z "$2" ]
            then
                echo "Please pass a directory"
                exit 1
            fi
            echo "Installing into \"$2\""
            CURSORS_DIR="$2"
        ;;

        *)
            echo "Unrecognized option \"$1\""
            exit 1
        ;;
    esac
fi
INSTALL_DIR="$CURSORS_DIR/$THEME_NAME"

echo "Installing $THEME_NAME into $INSTALL_DIR"
if [ -d "$INSTALL_DIR" ]
then
    echo "$INSTALL_DIR already exists, aborting."
    exit 1
fi

mkdir -p "$INSTALL_DIR"
cp -r "$SCRIPT_DIR/cursor.theme" "$INSTALL_DIR/cursor.theme"
cp -r "$SCRIPT_DIR/cursors/" "$INSTALL_DIR/cursors/"
echo "Done!"