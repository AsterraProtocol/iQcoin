#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/iQcoin.png
ICON_DST=../../src/qt/res/icons/iQcoin.ico
convert ${ICON_SRC} -resize 16x16 iQcoin-16.png
convert ${ICON_SRC} -resize 32x32 iQcoin-32.png
convert ${ICON_SRC} -resize 48x48 iQcoin-48.png
convert iQcoin-16.png iQcoin-32.png iQcoin-48.png ${ICON_DST}

