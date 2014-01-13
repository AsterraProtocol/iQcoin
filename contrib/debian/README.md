
Debian
====================
This directory contains files used to package iQcoind/iQcoin-qt
for Debian-based Linux systems. If you compile iQcoind/iQcoin-qt yourself, there are some useful files here.

## iQcoin: URI support ##


iQcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install iQcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your iQcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/iQcoin128.png` to `/usr/share/pixmaps`

iQcoin-qt.protocol (KDE)

