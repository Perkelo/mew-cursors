XCursor-Theme-Template
======================

Cursor theme template for X11.

Usage
-----

Edit "cursor.theme" file

Put you cursor files in XCursor format generated with "xcursorgen" into
[cursors/xcursor](cursors/xcursor)

If you're using some other program to generate cursor files, go into [cursors/xcursor](cursors/xcursor) and refer to the [README](cursors/xcursor/README.md) file for how to name them.


## Installation
Run `install.sh`

This will install the theme into `~/.icons`. If you want to install it in another directory (e.g., if you want to install the theme system-wide), run:

```
./install.sh -d <directory>
```

## Manual installation
Copy this directory into `~/.icons` for user-only install, or to `/usr/share/icons/` for system-wide install

## Uninstalling
Run `uninstall.sh`
By default, this will look into `~/.icons`. If you installed it into a different directory, pass it as parameter as with the installation script:

```
./uninstall.sh -d <directory>
```

## Manual uninstallation
Remove the directory you created during installation.