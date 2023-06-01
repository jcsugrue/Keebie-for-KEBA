#!/bin/sh
export DISPLAY=:0.0

mkdir -p /media/usb0/screenshots

FILE=$1
if [ -z ${FILE} ]; then
	FILE="/media/usb0/screenshots/screenshot-$(date +%Y.%m.%d-%Hh%M.%S).png"
fi

ffmpeg -video_size 800x1280 -f x11grab -i :0.0+nomouse -vframes 1 "${FILE}" 2>/dev/null || exit 1
