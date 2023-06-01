#!/bin/sh
export DISPLAY=:0.0

mkdir -p /media/usb0/video

FILE=$1
if [ -z ${FILE} ]; then
	FILE="/media/usb0/video/video-$(date +%Y.%m.%d-%Hh%M.%S).mkv"
fi

ffmpeg -s 800x1280 -r 24 -f x11grab -i :0.0+nomouse -c:v libx264 -pix_fmt yuv420p -preset ultrafast -crf 0 -y "${FILE}" 2>/dev/null &
