#!/bin/sh
for pid in $(pgrep 'ffmpeg'); do
	kill "$pid"
done
